clear all;
clf;

% Input and filter sequences
x = [1, 1, 1, 0.5];
h = [1, 0.75, 0.5, 0.25];

% Circular convolution
X = fft(x);
H = fft(h);

Y = X .* H;
y = ifft(Y);


figure();
stem(0:1:3, y);
ylabel('y[n]');
xlabel('n');

% Linear convolution (requires zero-padding)
x = [1, 1, 1, 0.5, 0, 0, 0];
h = [1, 0.75, 0.5, 0.25, 0, 0, 0];

X = fft(x);
H = fft(h);

Y = X .* H;
y = ifft(Y);

figure();
stem(0:1:6, y);
ylabel('y[n]');
xlabel('n');
