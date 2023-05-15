clc; clear;

x = -10:0.1:10;
y = sin(x);
g = cos(x);

title("Sinus and Cosinus")
hold on

plot(x,y, 'r:')
plot(x,g, 'b:')

hold off

% Punktowany wykres : 

% lub plot(x,y,':', x, g, ':') - > wtedy odrazu bez hold ona zadziala 