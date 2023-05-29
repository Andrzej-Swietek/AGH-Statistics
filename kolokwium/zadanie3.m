%% Zadanie 3 
% Napisz skrypt kreslacy na dwuch wykresach w jednym oknie nastepujace
% funckje:
% y1 = k1* sin(k1*x) 
% y2 = cos(k2*x), dla x nalezacego od -pi do 2pi, k1= 0.5 a k2 = 1
% podpisz osie, umiesc tytul i legende
% Andrzej Swietek

clc;clear;

k1 = 0.5;
k2 = 1;
x = linspace(-pi,2*pi);
y = k1* sin(k1*x);
g = cos( k2*x );

subplot(2,1,1)
plot(x,y)
subtitle("k_{1}* sin(k_{1}*x)")
legend("y = f(x)")
grid on
xlabel("x")
ylabel("y")


subplot(2,1,2)
plot(x,g, 'r')
subtitle("cos( k_{2} * x )")
legend( "y = g(x)" )
xlabel("x")
ylabel("y")

