% 1
clc; clear;
% dane które można zmienić
n = 100000;
p1 = 0.2;
p2 = 0.8;
n1 = p1*n;
n2 = p2*n;
% generowanie zmiennych losowych
Z1 = randn(1,n1) - 2;       % pionowy wektor
Z2 = randn(1,n2)*2 + 4;     % mi = 2, sigma = 4
% hold on
% histogram(Z2);
% histogram(Z1);
% hold off

% 2
Z = [Z1, Z2];   %scalanie w pionied
hold on;
hist = histogram(Z);
dx = hist.BinWidth; % szerokość słupków
% 3
x = -6:0.1:10;
% y = (1/(sqrt(2*pi)*exp((-1/2)*((x+2)/1).^2))).*0.2 + (1/(2*(sqrt(2*pi))*exp((-1/2)*((x-4)/2).^2)))*0.8; 
% NIE PISAĆ JAK DEBIL
% TYLKO UŻYWAĆ JUŻ GOTOWYCH FUNKCJI
% BO MOJE I TAK NIE DZIAŁAJĄ
y =  normpdf(x,-2,1)*p1 +  normpdf(x,4,2)*p2;
plot(x, y*n*dx);    % mnożymy razy pole powierzchni pod słupkami
hold off;

% 4
% DZ = sqrt(sum((Z-mean(Z)).^2)/n);
DZ = std(Z);        % standardowe odchylenie fajna funkcja
h = 1.06*DZ*n^(-1/5);   % przybliżony wzór na wygładzenie

% niepraktyczna metoda ale dziala 
suma = 0;
for i = 1:n
    suma = suma + normpdf(x, Z(i), h);
end
y2 = (1/n)*suma;

% praktyczna metoda (j=161, a i=100000 dlatego pętla z j jest bardziej
% wydajna )
y3 = zeros(1, length(x));
for j = 1:length(x)
    y3(j) = sum(normpdf((x(j)-Z)/h) / (n*h));
end

plot(x, y3, 'r-', x, y, 'b-');

% 5
mse = mean((y3-y).^2);
rmse = sqrt(mse);   %średnio wykresy różnią się o 0.001


% SPRAWOZDANIE
% legend('a', 'b') - legenda
% title('tytul')
% xlabel, ylabel
% opisać co oznaczają obrazki 
% wklajać wykresy, z których korzystamy
% wyslac na email
% ok 5 stron
% wysłać PDF
% ponoć latec git ale imo word lepszy
% 2 tygodnie czasu