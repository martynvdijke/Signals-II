clear all;
clf;

% Parameters
A = 1;
K = 11;
K1 = 0.5 * K;
K2 = 0.5;
K3 = 0.5 * (1 - K);

% Generate block function
for i = 1:K
    x(i) = 1;
end

% Determine x-axis
theta = -pi:0.001:pi;
%theta2 = -pi:(2 * pi / (K +)):pi;
theta2 = -5:1:5;
theta2 = theta2 / K * 2 * pi;

% Calculate FTD
X = A * (sin(K1 * theta) ./ sin(K2 * theta)) .* exp(-1i * K3 * theta);

% Calculate DFT
Xdft = fftshift(fft(x, K));

% Plot results
figure();
plot(theta, abs(X));

xlabel('\theta');
ylabel('|X(e^{j\theta})|');
legend('FTD of x[n]');

figure();
hold on;
plot(theta, abs(X));
stem(theta2, abs(Xdft));
hold off;

xlabel('\theta');
ylabel('|X(e^{j\theta})|');
legend('FTD of x[n]', '11-point DFT of x[n]');