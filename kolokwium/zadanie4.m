%% Zadanie 4 
% Oblicz wartosc funkcji cos(x) przyjmujac ze x zmienia sie od -10 do 10 z
% krokiem 0.1
% Andrzej Swietek

clc; clear;

x = -10:0.1:10;
y = cos(x);

disp("Wartoci Cosinusa")
disp(y)


% Wykresik
plot(x,y)

xlabel('Os x')
ylabel('Os y')
title("cos(x)")