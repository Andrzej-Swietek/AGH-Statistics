clc; clear;

pwd
2 + 3/4*5;
a = ans + 1;
a
pi
% i j % zmienne urojone
date % data aktualna
clock % aktualny czas

% funkcje : 
% abs
% cos, sin, tan 
% log - log naturalny

% Operatory relacji -> 1 TRUE | 0 FALSE 
%  < i >  mniejsze i wieksze
%  <= mniejsze badz rowne 
%  == rownosc
%  ~= rozne od 
%  & - AND 
%  | - alternatywa OR
%  ~ negacja NOT
%  xor XOR

x=[ 1 1 5 5];
y=[0 2 4 6];

% Liczby zespolone
zmienna = 2 + 1i;
zmienna + 1;

% operacje matematyczne
2*2
ans/4
log(2)
log10(100)

% ZAD 1
% Utworz zmienna x=2 , sprawdz jej zawartosc a nastepnie oblicz sqrt(x)
x = 2
x
sqrt(x)

% ZAD 2
% Przypisz zmiennej y wartosc 4 bez zwracania wyniku
y = 4;

% ZAD 3
%  Zapisz w jednym wierszu 3 polecenia a=1,b=2,c=3 z kazdorazowym
%  wyswietleniem wwartosci
a = 1, b=2, c=3

cos(pi)

tan(pi/4)

sin(5) + cos(5)

sin(5)^2 + cos(5)^2




% PLOT 3D
x = rand(1,10);
y = rand(1,10);
z = duration(rand(10,1),randi(60,10,1),randi(60,10,1));

plot3(x,y,z,'o','DurationTickFormat','mm:ss')
xlabel('X')
ylabel('Y')
zlabel('Duration')
grid on