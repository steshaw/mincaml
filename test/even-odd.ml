let t = 123 in
let f = 456 in
let rec even x =
  if x > 0 then odd (x - 1) else
  if x < 0 then odd (x + 1) else
  t
and odd x =
  if x > 0 then even (x - 1) else
  if x < 0 then even (x + 1) else
  f in
print_int (even 789)
