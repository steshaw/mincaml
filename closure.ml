type closure = { entry : Id.l; actual_fv : Id.t list }
type t = (* クロージャ変換後の式 (caml2html: closure_t) *)
  | Unit
  | Int of int
  | Float of float
  | Neg of Id.t
  | Add of Id.t * Id.t
  | Sub of Id.t * Id.t
  | FNeg of Id.t
  | FAdd of Id.t * Id.t
  | FSub of Id.t * Id.t
  | FMul of Id.t * Id.t
  | FDiv of Id.t * Id.t
  | IfEq of Id.t * Id.t * t * t
  | IfLE of Id.t * Id.t * t * t
  | Let of (Id.t * Type.t) * t * t
  | Var of Id.t
  | MakeCls of ((Id.t * Type.t) * closure) list * t
  | AppCls of Id.t * Id.t list
  | AppDir of Id.l * Id.t list
  | Tuple of Id.t list
  | LetTuple of (Id.t * Type.t) list * Id.t * t
  | Get of Id.t * Id.t
  | Put of Id.t * Id.t * Id.t
  | ExtArray of Id.l
type fundef = { name : Id.l * Type.t;
		args : (Id.t * Type.t) list;
		formal_fv : (Id.t * Type.t) list;
		body : t }
type prog = Prog of fundef list * t

let rec fv = function
  | Unit | Int(_) | Float(_) | ExtArray(_) -> S.empty
  | Neg(x) | FNeg(x) -> S.singleton x
  | Add(x, y) | Sub(x, y) | FAdd(x, y) | FSub(x, y) | FMul(x, y) | FDiv(x, y) | Get(x, y) -> S.of_list [x; y]
  | IfEq(x, y, e1, e2)| IfLE(x, y, e1, e2) -> S.add x (S.add y (S.union (fv e1) (fv e2)))
  | Let((x, t), e1, e2) -> S.union (fv e1) (S.remove x (fv e2))
  | Var(x) -> S.singleton x
  | MakeCls(bindings, e) ->
      let (xs, yss) =
	List.fold_left
	  (fun (xs, yss) ((x, t), { entry = l; actual_fv = ys }) ->
	    (S.add x xs, S.union yss (S.of_list ys)))
	  (S.empty, S.empty)
	  bindings in
      S.diff (S.union yss (fv e)) xs
  | AppCls(x, ys) -> S.of_list (x :: ys)
  | AppDir(_, xs) | Tuple(xs) -> S.of_list xs
  | LetTuple(xts, y, e) -> S.add y (S.diff (fv e) (S.of_list (List.map fst xts)))
  | Put(x, y, z) -> S.of_list [x; y; z]

let toplevel : fundef list ref = ref []

let rec g env known = function (* クロージャ変換ルーチン本体 (caml2html: closure_g) *)
  | KNormal.Unit -> Unit
  | KNormal.Int(i) -> Int(i)
  | KNormal.Float(d) -> Float(d)
  | KNormal.Neg(x) -> Neg(x)
  | KNormal.Add(x, y) -> Add(x, y)
  | KNormal.Sub(x, y) -> Sub(x, y)
  | KNormal.FNeg(x) -> FNeg(x)
  | KNormal.FAdd(x, y) -> FAdd(x, y)
  | KNormal.FSub(x, y) -> FSub(x, y)
  | KNormal.FMul(x, y) -> FMul(x, y)
  | KNormal.FDiv(x, y) -> FDiv(x, y)
  | KNormal.IfEq(x, y, e1, e2) -> IfEq(x, y, g env known e1, g env known e2)
  | KNormal.IfLE(x, y, e1, e2) -> IfLE(x, y, g env known e1, g env known e2)
  | KNormal.Let((x, t), e1, e2) -> Let((x, t), g env known e1, g (M.add x t env) known e2)
  | KNormal.Var(x) -> Var(x)
  | KNormal.LetRec(fundefs, e2) -> (* 関数定義の場合 (caml2html: closure_letrec) *)
      (* 関数定義let rec x y1 ... yn = e1 in e2の場合は、
	 xに自由変数がない(closureを介さずdirectに呼び出せる)
	 と仮定し、knownに追加してe1をクロージャ変換してみる *)
      let toplevel_back = !toplevel in
      let xts = List.map (fun { KNormal.name = xt } -> xt) fundefs in
      let xs = List.map fst xts in
      let env' = M.add_list xts env in
      let known' = S.union known (S.of_list xs) in
      let e1s' =
	List.map
	  (fun { KNormal.args = yts; KNormal.body = e1 } ->
	    g (M.add_list yts env') known' e1)
	  fundefs in
      (* 本当に自由変数がなかったか、変換結果e1'を確認する *)
      let check =
	List.fold_left2
	  (fun check { KNormal.name = (x, t); KNormal.args = yts } e1' ->
	    check &&
	    S.subset
	      (fv e1')
	      (S.add x (S.of_list (List.map fst yts)))) (* x自身と引数y1,...,yn以外は自由変数とみなす(相互再帰関数も) *)
	  true
	  fundefs
	  e1s' in
      let known', e1s' =
	if check then known', e1s' else
	(* 駄目だったら状態(toplevelの値)を戻して、クロージャ変換をやり直す *)
	(toplevel := toplevel_back;
	 let e1s' =
	   List.map
	     (fun { KNormal.args = yts; KNormal.body = e1 } ->
	       g (M.add_list yts env') known e1)
	     fundefs in
	 known, e1s') in
      let e2' = g env' known' e2 in
      if S.is_empty (S.inter (S.of_list xs) (fv e2')) then (* xが変数としてe2'に出現するか *)
	(Format.eprintf "eliminating closure(s) %s@." (Id.pp_list xs);
	 e2') (* 出現しなければMakeClsを削除 *)
      else
	let bindings =
	  List.map2
	    (fun { KNormal.name = (x, t); KNormal.args = yts; KNormal.body = e1 } e1' ->
	      let zs = S.elements (S.remove x (S.diff (fv e1') (S.of_list (List.map fst yts)))) in (* 自由変数のリスト *)
	      let zts = List.map (fun z -> (z, M.find z env')) zs in (* ここで自由変数zの型を引くために引数envが必要 *)
	      toplevel := { name = (Id.L(x), t); args = yts; formal_fv = zts; body = e1' } :: !toplevel; (* トップレベル関数を追加 *)
              ((x, t), { entry = Id.L(x); actual_fv = zs })) (* MakeClsのための束縛 *)
	    fundefs
	    e1s' in
	MakeCls(bindings, e2') (* 出現していたら削除しない *)
  | KNormal.App(x, ys) when S.mem x known -> (* 関数適用の場合 (caml2html: closure_app) *)
      Format.eprintf "directly applying %s@." x;
      AppDir(Id.L(x), ys)
  | KNormal.App(f, xs) -> AppCls(f, xs)
  | KNormal.Tuple(xs) -> Tuple(xs)
  | KNormal.LetTuple(xts, y, e) -> LetTuple(xts, y, g (M.add_list xts env) known e)
  | KNormal.Get(x, y) -> Get(x, y)
  | KNormal.Put(x, y, z) -> Put(x, y, z)
  | KNormal.ExtArray(x) -> ExtArray(Id.L(x))
  | KNormal.ExtFunApp(x, ys) -> AppDir(Id.L("min_caml_" ^ x), ys)

let f e =
  toplevel := [];
  let e' = g M.empty S.empty e in
  Prog(List.rev !toplevel, e')
