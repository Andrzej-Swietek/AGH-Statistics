clc;clear;

X = [ 2 , 2 ,0 , 1 , 3 , 4, 1, 1, 0, 2, 3, 1, 1, 1, 2 ];

disp(sort(X))

% moda lub dominanta - najczesciej pojawiajaca sie dana ozn D
D = mode(X);

% Mediana wartosc srodkowa
M = median(sort(X));

disp(D)
disp(M)