clc;clear;

% limt ( F, x, a) - granica w punkcie

syms x          % zmienna symboliczczna do limesa

limit((sin(x)^2)/(1+cos(x)^3),x,pi)

limit( (1-(x+1)^0.5)/x, x, 0 )

% cw 1
limit((x-2)/(x^2-4),x,2)

% cw 2
limit( ( 2*x^2 -11*x +5 )/( 3*x^2 - 14*x -5 ), x, 5 )


% diff - Differentiation - pochodna 
diff(exp(x)*cos(x),x)

% integral

% int(F, x, a, b) // inf nieskonconosc

% cw 1
syms x
y = sin(2*x) - x^2
int(y)

% cw 2 
P = int(y, x, 0, 2)