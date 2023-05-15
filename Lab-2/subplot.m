clc;clear;
k1 = 0.5;
k2 = 1;
x = linspace(-2*pi,2*pi);
y = k1* sin(k1*x);
g = cos( k2*x );

subplot(2,2,1)
plot(x,y)
subtitle("k_{1}* sin(k_{1}*x)")
legend("y = f(x)")
grid on
xlabel("x")
ylabel("y")

%  2 iwersze 2 kolumny i pozycja w gridzie
subplot(2,2,2)
plot(x,g, 'r')
subtitle("cos( k_{2} * x )")
legend( "y = g(x)" )
xlabel("x")
ylabel("y")

