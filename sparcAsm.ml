(* SPARC assembly with a few virtual instructions *)

type id_or_imm = V of Id.t | C of int
type t = (* 命令の列 (caml2html: sparcasm_t) *)
  | Ans of exp
  | Seq of exp * t
  | Let of Id.t * exp * t
  | FLetD of Id.t * exp * t
  | Forget of Id.t * t (* Spillされた変数を、自由変数の計算から除外するための仮想命令 (caml2html: sparcasm_forget) *)
and exp = (* 一つ一つの命令に対応する式 (caml2html: sparcasm_exp) *)
  | Nop
  | Set of int
  | SetL of Id.l
  | Mov of Id.t
  | Neg of Id.t
  | Add of Id.t * id_or_imm
  | Sub of Id.t * id_or_imm
  | SLL of Id.t * id_or_imm
  | Ld of Id.t * id_or_imm
  | St of Id.t * Id.t * id_or_imm
  | FMovD of Id.t
  | FNegD of Id.t
  | FAddD of Id.t * Id.t
  | FSubD of Id.t * Id.t
  | FMulD of Id.t * Id.t
  | FDivD of Id.t * Id.t
  | LdDF of Id.t * id_or_imm
  | StDF of Id.t * Id.t * id_or_imm
  | Comment of string
  (* virtual instructions *)
  | IfEq of Id.t * id_or_imm * t * t
  | IfLE of Id.t * id_or_imm * t * t
  | IfGE of Id.t * id_or_imm * t * t (* 左右対称ではないので必要 *)
  | IfFEq of Id.t * Id.t * t * t
  | IfFLE of Id.t * Id.t * t * t
  (* closure address, integer arguments, and float arguments *)
  | CallCls of Id.t * Id.t list * Id.t list
  | CallDir of Id.l * Id.t list * Id.t list
  | Save of Id.t * Id.t (* レジスタ変数の値をスタック変数へ保存 (caml2html: sparcasm_save) *)
  | Restore of Id.t (* スタック変数から値を復元 (caml2html: sparcasm_restore) *)
type fundef = { name : Id.l; args : Id.t list; fargs : Id.t list; body : t; ret : Type.t }
(* プログラム全体 = 浮動小数定数テーブル + トップレベル関数 + メインの式 (caml2html: sparcasm_prog) *)
type prog = Prog of (Id.l * float) list * fundef list * t

let regs = (* Array.init 16 (fun i -> Printf.sprintf "%%r%d" i) *)
  [| "%i2"; "%i3"; "%i4"; "%i5";
     "%l0"; "%l1"; "%l2"; "%l3"; "%l4"; "%l5"; "%l6"; "%l7";
     "%o0"; "%o1"; "%o2"; "%o3"; "%o4"; "%o5" |]
let fregs = Array.init 8 (fun i -> Printf.sprintf "%%f%d" (i * 2))
let allregs = List.rev (Array.to_list regs)
let allfregs = List.rev (Array.to_list fregs)
let reg_cl = regs.(Array.length regs - 1) (* closure address (caml2html: sparcasm_regcl) *)
let reg_sw = regs.(Array.length regs - 2) (* temporary for swap *)
let reg_fsw = fregs.(Array.length fregs - 1) (* temporary for swap *)
let reg_sp = "%i0" (* stack pointer *)
let reg_hp = "%i1" (* heap pointer (caml2html: sparcasm_reghp) *)
let reg_ra = "%o7" (* return address *)
let is_reg x = (x.[0] = '%')
let co_freg_table =
  let ht = Hashtbl.create 8 in
  for i = 0 to 7 do
    Hashtbl.add
      ht
      (Printf.sprintf "%%f%d" (i * 2))
      (Printf.sprintf "%%f%d" (i * 2 + 1))
  done;
  ht
let co_freg freg = Hashtbl.find co_freg_table freg (* "companion" freg *)

(* super-tenuki *)
let remove x ys = List.filter (fun y -> y <> x) ys
let remove_list xs ys = List.filter (fun y -> not (List.mem y xs)) ys
let add x ys = x :: remove x ys
let add_list xs ys = xs @ remove_list xs ys

(* free variables in the order of use (for spilling) (caml2html: sparcasm_fv) *)
let fv_id_or_imm = function V(x) -> [x] | _ -> []
let rec fv_exp = function
  | Nop | Set(_) | SetL(_) | Comment(_) | Restore(_) -> []
  | Mov(x) | Neg(x) | FMovD(x) | FNegD(x) | Save(x, _) -> [x]
  | Add(x, y') | Sub(x, y') | SLL(x, y') | Ld(x, y') | LdDF(x, y') -> add x (fv_id_or_imm y')
  | St(x, y, z') | StDF(x, y, z') -> add x (add y (fv_id_or_imm z'))
  | FAddD(x, y) | FSubD(x, y) | FMulD(x, y) | FDivD(x, y) -> [x; y]
  | IfEq(x, y', e1, e2) | IfLE(x, y', e1, e2) | IfGE(x, y', e1, e2) -> add x (add_list (fv_id_or_imm y') (add_list (fv e1) (fv e2)))
  | IfFEq(x, y, e1, e2) | IfFLE(x, y, e1, e2) -> add x (add y (add_list (fv e1) (fv e2)))
  | CallCls(x, ys, zs) -> add x (add_list ys zs)
  | CallDir(_, ys, zs) -> add_list ys zs
and fv = function
  | Ans(exp) -> fv_exp exp
  | Seq(exp, e) -> add_list (fv_exp exp) (fv e)
  | Let(x, exp, e) | FLetD(x, exp, e) -> add_list (fv_exp exp) (remove x (fv e))
  | Forget(x, e) -> remove x (fv e) (* Spillされた変数は、自由変数の計算から除外 (caml2html: sparcasm_exclude) *)
    (* [XXX] (if y = z then (forget x; ...) else (forget x; ...)); x + x
       のように、ifのthen節とelse節の両方でxがforgetされている場合は、
       eの自由変数からxを除いても良いが、ここではそうしないことにする。
       つまり、ifでは変数はforgetされない(かもしれない)と近似する。 *)

let rec concat e1 xt e2 =
  match e1 with
  | Ans(exp) ->
      (match snd xt with
      | Type.Unit -> Seq(exp, e2)
      | Type.Float -> FLetD(fst xt, exp, e2)
      | _ -> Let(fst xt, exp, e2))
  | Seq(exp, e1') -> Seq(exp, concat e1' xt e2)
  | Let(y, exp, e1') -> Let(y, exp, concat e1' xt e2)
  | FLetD(y, exp, e1') -> FLetD(y, exp, concat e1' xt e2)
  | Forget(y, e1') -> Forget(y, concat e1' xt e2)

let align i = (if i mod 8 = 0 then i else i + 4)
