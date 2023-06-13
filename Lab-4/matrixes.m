clc; clear;

% matrixes

A = [ 2 5 6; 7 6 8 ];

numel(A)

rank(A)

B = [ 3 6 7 ; 4 6 7];

% DODAWANIE
A+B

% ODEJMOWANIE
A-B

A.*B % ILOCZYN SKLARNY

% TRANSPOZYCJA
A.'

times(A,B)

%% CW 1
% Wykonaj potegowanie macierzy A = [4 3 5; 6 7 9] i B = [2 3 4 , 6 8 7]
% Wykonaj dzielenie macierzy A i B

A = [4 3 5; 6 7 9]; B = [2 3 4 ; 6 8 7];
power = A.^B
power(A,B)

division = A./B 
rdivide(A,B)
% ldivide(A,B)

%% "Dwukropek"
% znaczenie - wez wszystkie

A = [ 2 3 4 5; 6 7 8 9 ; 10 11 12 13 ; 15 16 17 18]
A(:,2) % wszystkie wiersze i kolumna 2

A(:,2:3) % wszystkie wiersze i kolumny 2 do 3

A(:, 1:2:4) % wszystkie wiersze i kolumny od 1-4 z krokiem 2

A(1, :) % wiersz 1 wszystkie kolumny

