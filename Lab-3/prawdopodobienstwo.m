%% Prawdopodobienstwo wyprodukowania wadliwej sztuki wynosi p=0.5
% wybrano losowo probe o liczbenosci n = 100. Niech Xn bedzie liczba sztuk
%& wadliwych w probce . Pobliczyc P(Xn=9) (bincdf)

clc;clear;

% binopdf(X,N,P) - Funkcja gestosci rozkladu dwumianowego
% ch2pdf(X,V) - rozklad chi kwadrat
% binocdf - Binomial cumulative distribution function




p = 0.05; % Prawdopodobieństwo wyprodukowania wadliwej sztuki
n = 100; % Liczność próbki
x = 9; % Liczba wadliwych sztuk

Prawdo = 1 - binocdf(x, n, p);

disp(Prawdo)
