clc; clear;
 

% 1
n = 10e3; a = 1664525; b = 1013904223; m = 2^32;
x = 1;
for i=2:n
    x(i) = mod(a*x(i-1), m);
end


% 2
n = 10000; a = 1664525; b = 1013904223; m= 2^32;
x = 1;
for i=2:n
    x(i) = mod((a*x(i-1)+b), m);
end

% 2.1
x = x/(m-1);

% 2.2
subplot(2,2,1);
histogram(x);

% 2.3
subplot(2,2,3); 
plot(x(1:end-1), x(2:end), '.');

% 2.4 
ex=1/n*sum(x); % teoretyczna wartość oczekiwana = 0.5

% 2.5
dx1=sqrt(1/n*sum((x-0.5).^2)); % korzystając z estymatora obciążonego
dx2=sqrt(1/(n-1)*sum((x-ex).^2)); % korzystając z estymatora nieobciążonego


% 3

% 3.1
y = icdf('normal', x, 0, 1);
subplot(2,2,2);
histogram(y);

%3.2
subplot(2, 2, 4);
plot(y(1:end-1), y(2:end), '.');

%3.3
ey = 1/n*sum(y); % teoretyczna wartość oczekiwana = 0

%3.4 odchylenie standardowe teoretyczne wynosi 1
dy1=sqrt(1/n*sum((y).^2)); % korzystając z estymatora obciążonego
dy2=sqrt(1/(n-1)*sum((y-ey).^2)); % korzystając z estymatora nieobciążonego
