clc;clear;
syms x y z;
A = sym(2);

syms a b c;
a = 1;
b = 2;

y = a+b;
syms f(x)
f(x)=a*x^2 + b*x + c

diff(f(x))
diff(f(x),'a')
diff(f(x),'x',2) % pochodna drugiego rzedu