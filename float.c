#include <stdio.h>
#include <caml/mlvalues.h>
#include <caml/alloc.h>

value gethi(value v) {
  const double d = Double_val(v);
  return copy_int32(*(const int32 *)&d);
}

value getlo(value v) {
  const double d = Double_val(v);
  return copy_int32(*((const int32 *)&d + 1));
}
