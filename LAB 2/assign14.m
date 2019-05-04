clear all;
close all;
clf;

fs = 1000;
df = 12.5;
N = 25
W = N;

f1 = 175;
f2 = 200;
a1 = 1;
a2 = 1;

% Set sampling range using the rect. window
n  = 1:W;

% Sample the sinusoidal signals
x = a1 * sin(2 * pi * (f1 / fs) .* n) + a2 * sin(2 * pi * (f2 / fs) .* n);

% Perform DFT on the signal
Y = fftshift(fft(x, N));

% Plot the result
stem(Y);