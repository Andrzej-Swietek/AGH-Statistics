clc; clear;

x = randi(6)
x = randi(6,1,10000);

histogram(x)
xlabel("wynik")
ylabel("liczba zliczen");
title("Kosc szescienna, 10k powtorzen");