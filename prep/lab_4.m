clc;clear;
%1 
n = 1000;
mu = -2;
sigma = 3;
t = 2000;

K = [1.63 1.36 1.22 1.14 1.07]; % Kwantyle dla alpha = (0.01, 0.05, 0.1, 0.15, 0.2) 
K_dict = [0.01 0.05 0.1 0.15 0.2];
K_accept = zeros(1, 5);

%3
for j=1:t
    
X = randn(1, n)*sigma + mu;
% histogram(X);

%2
F = cdf('normal', X, mu, sigma);    %dystrybuanta teoretyczna
hold on
plot(X, F, '.');
Fn = zeros(1, n);   % dystrybuanta empiryczna
for i=1:n
    Fn(i) = length(X(X<=X(i)))/n;
%     Fn(i) = sum(X<=X(i))/n; % X<=X(i) daje wektor logiczny (1 lub 0)
end
plot(X, Fn, 'r.');   
hold off

Dn = max(abs(F-Fn));
% disp(Dn);
% disp(K(K-(Dn*sqrt(n)) < 0));
%porównanie statystyki do kwantyla to prawdziwa część testu
K_accept = K_accept + (sqrt(n)*Dn>K); % brać w nawiasy aby kolejność działań nie rozwaliła kodu
end
K_accept = K_accept/t;
disp(K_accept); 
disp(K);
disp(mean(K_accept-K_dict));