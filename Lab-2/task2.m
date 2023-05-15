clc; clear;

k1 = 3;
k2 = 2;

x = linspace(-10,10);
y = k1 * x;
g = x.^k2;



plot(x,y, "-", x,g,"-")
grid on
title("k_{1}*x i x^k");
xlabel("X Axis");
ylabel("Y Axis");
legend("y = k_1 * x","y = x^{k_2}")
