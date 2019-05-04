clear all;
close all;
clc;

mu = 0;
sigma = 1;
K = 100;
L = 1000;
N = 1:K;
n = 1:L;

% Generate to Gaussian (or Normal) distributed random variables 
x1 = normrnd(mu, sigma, 1, 1000);
x2 = normrnd(mu, sigma, 1, 1000);

% Calculate Y, mY and vY for every N
for N = 1:100
    y(N, :) = (x1(n) + (N - 1) .* x2(n)) ./ N;
    mY(N) = mean(y(N, :));
    vY(N) = mean(abs(y(N, :) - mY(N)).^2); % of gewoon var(y(N))
end

% Plot [N, var(Y)]
figure();
plot(1:K, vY);
xlabel('N');
ylabel('\sigma_{y_N}^2');
saveas(gcf,'assign19a','png');

% Calculate the normalized cross covariance
for N = 1:100
    xcov(N) = mean((x2(n) - mu) .* (y(N, n) - mean(y(N, n)))) ./ (sigma * sqrt(vY(N)));
end

% Plot [N, n-crosscov(Y)]
figure();
plot(1:K, xcov);
xlabel('N');
ylabel('\rho_{x_2, y_N}^2');
saveas(gcf, 'assign19b', 'png');