# Algebraic Model
param m;
param n;
param c{1..n};
param b{1..m};
param a{1..m,1..n};

var x{1..n}>=0;

maximize z: sum{j in 1..n}c[j]*x[j];
subject to restr{i in 1..m}:
	sum{j in 1..n}a[i,j] * x[j]<=b[i];
	
# Specify Problem
data;
param n: 2;
param m: 4; 
param c: 1 5 2 4;
param b: 1 24 2 6 3 1 4 2;
param a:  1    2 :=
	  1   6    4
	  2   1    2
	  3  -1    1
      4   0    1;
		 
# Solve the problem
solve;
display z, x;