clc; clear;
ezplot('x^2')

% przedział x
ezplot('x^2', [-10,10])

% przedział i 'x' i 'y'
ezplot('x^2', [-10 10 - 5 25])

% Funkcja uwikłana
ezplot('x^2+2*y^2+3^x-5')

% Na szybko wykresik 3D
ezsurf('exp(-x^2-y^2)')