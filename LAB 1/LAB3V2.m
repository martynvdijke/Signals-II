%%assigment 9

clear all;
clf;

fs = 0.5;
f = 0.2;
f2 = 0.3;
f3 = 0.7;
phi = pi / 4;

n = 0:10;
x1n = cos(2*pi*(f/fs)*n + phi);
x2n = cos((2*pi*f2/fs)*n - phi);
x3n = cos((2*pi*f3/fs)*n + phi);

t = 0:0.1:10;
x1t = cos(2*pi*f*t + phi);
x2t = cos(2*pi*f2*t - phi);
x3t = cos(2*pi*f3*t + phi);

hold on;
stem(n, x1n);
stem(n, x2n);
stem(n, x3n);
plot(t, x1t);
plot(t, x2t);
plot(t, x3t);
hold off;
