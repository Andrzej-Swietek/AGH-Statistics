%% Zadanie 7 Za pomoca solve wyznacz miejsca zerowe dla a*x^2 + bx + c
% Andrzej Swietek

clc;clear; 

syms x a b c
f = a*x^2 + b*x + c;
solve(f,x)