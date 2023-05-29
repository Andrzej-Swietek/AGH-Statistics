%% Zadanie 2 
% Stworz macierz liczb losowych z przedzilu (0,10 o wymiarach 1x4.
% Zilustruj zaanie graficznie
% Andrzej Swietek


clc;clear;

A = rand(1,4);

x = [1,2,3,4];

A


bar(x,A, 'r')

xlabel("KOlejne wartosci")
ylabel("Y axis - Wartosc Zmiennej losowej")