clear all;
clf;

% Parameters
A = 1;
K = 11;
K1 = 0.5 * K;
K2 = 0.5;
K3 = 0.5 * (1 - K);
N = 32;

% Generate x-axis
theta = -16:15;
theta = theta / N * 2 * pi;
theta2 = -pi:0.001:pi;

% Generate block function
for i = 1:K
    x(i) = 1;
end

% Re-do the FTD 
X = A * (sin(K1 * theta2) ./ sin(K2 * theta2)) .* exp(-1i * K3 * theta2);

% Determine DFT with zero-padding
Y = fft(x, N);

% Plots
plot(theta, abs(fftshift(Y)), theta2, abs(X));
legend('32-point DFT with zero padding of x[n]', 'FTD of x[n]');
xlabel('\theta');
ylabel('|X(e^{j\theta})|');