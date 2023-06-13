% randn(n) - wektor wartości z rozkładu gaussa o dlugosci n
clc; clear;

% REGRESJA LINIOWA

%1
n = 400;    % rozmair x
x = randn(n,1).*3;  %rozkład normalny

%2
a = rand()*2-1; % a z przedziału (-1, 1)
b = rand()*2-1;
y = a*x+b + randn(n,1)*a*.5;  % stworzenie funkcji z szumem (randn)
plot(x, y, '.');

%3
x_mean = mean(x);   % średni x
y_mean = mean(y);   % średni y

a_he = sum((x_mean-x).*(y_mean-y))/sum((x_mean-x).^2);  % estymowane a
b_he = y_mean - a_he*x_mean;    % estymowane b

%4
y_he = x.*a_he + b_he;  % estymowana funkcja linowa
plot(x, y, '.', x, y_he);

%5 
mse = sum((y-y_he).^2)/n;   % mean square error
rmse = sqrt(mse);   % root of mean square error

% REGRESJA WIELOMIANOWA

% w - wektor wartosci ( o rozmairze k )
% x - zbior wartosci z rozkladu
% y = sum(w.*(x^(0:k)'));  - wyznaczanie wartosci 

% 6
clc; clear;

n = 100;
x = randn(n, 1);

k = 5;  % rząd wielomianu
w = (rand(k+1, 1)-.5)*2;
y = sum(w.*(x.^(0:k)')) + randn(1,n)*mean(w)*3;   % wylicanie wartości z funkcji wielomianowej
plot(x, y, '.');

% 7
m = 3;
G = zeros(m+1); % tablica zer potrzebna ( macierz )
ro = zeros(m+1, 1); % tablica zer (wektor wyników)

for j=0:m
  for i=0:m
      G(i+1, j+1) = sum(x.^(i+j));  % +1 aby się indeksowanie zgadzało
  end
  ro(j+1) = sum(y.*x.^j');  % transponujemy aby można było rozwiązać układ równań
end

ew = G^-1*ro;    % wykliczenie estymowanego w

%8
x2 = sort(x);   % sortujemy aby narysować w sposób liniowy
y2 = sum(ew.*x2.^(0:m)');    
plot(x, y, '.', x2, y2, 'r');

%9
mse = sum((y-y2).^2)/n; 
rmse = sqrt(mse);