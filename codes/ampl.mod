# Algebraic Model
param M;
param N;
set _M:=0..M-1;
set _N:=0..N-1;
param A{i in _M, j in _N};
param b{i in _M};
param c{j in _N};
var x{j in _N} >= 0;
maximize obj:
sum{j in _N} c[j] * x[j];
s.t.
constraint{i in _M}:
sum{j in _N} A[i, j] * x[j] <= b[i];