%% Tutorial - Pseudo-Random number generator
% First matlab program
% Author: Andrzej Swietek
% Date: 18.03.2023
%%
clear all; close all; clc

%% Generacja liczb losowych
N = 1000;
x = randn(N, 1);

%% Histogram 
% Wyswietlanie histogramu

histogram(x, 50) % 50 przedziałów

title("Histogram");
xlabel("Wartość zmiennej losowej");
ylabel("Licznosc zmiennej");
grid on;


x2 = randn(N, 1);

% x3 = x * x2; % mnozenie w sesie cochiego mnozenie macierzy
x3 = x .* x2; % element po elemencie

%% LOOP
p = 0;
for i = 1:5
    p =  p + i;
end

%% Data types
chr = 'Akademia';
chr = [chr ' Gorniczo Hutnicza'];

studenci.rocznik = 2022;
studenci.liznosc = 104;
studenci.wydzial = 'WFIIS';

studenci.rocznik(2) = 2023;
studenci.liznosc(2) = 84;


studenci.liczba
studenci.liczba(2)


%% Funkcje
sumka = add_numbers(1,2);


function result = add_numbers(x, y)
    result = x + y;
end






