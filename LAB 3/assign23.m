clear all;
close all;
clc;

M = 1000; % no of samples
L = 11; 
mu = 0;
sigma = 1;

% Generate M random samples
x = normrnd(mu, sigma, 1, M);

% Theoretical cross correlation of assignment 21
ry_t = [1/9 2/9 3/9 2/9 1/9];

% Filter x[n] using impulse response h[n]
h = [1/3 1/3 1/3];
y = conv(x, h);
ry_e(1:21) = 0;

% Estimate the cross correlation for different lags l
for l = -10:10
    for n = 1:(M - abs(l) - 1)
       ry_e(l + 11) = ry_e(l + 11) + 1/M * y(n) * y(n + abs(l));
    end
end

figure();
hold on;
stem(-10:10, ry_e);
stem(-2:2, ry_t);
xlabel('l');
ylabel('r_y[l]');
h = legend('$\hat{r}_{y}[l]$', '$r_{y}[l]$');
set(h, 'Interpreter', 'latex');
hold off;
saveas(gcf,'assign23a','png');


%% Estimated PSD
% Generate theta from -pi to pi using 100 samples
theta = -50:49;
theta = theta / 100 * 2 * pi;

% Calculate the PSD using the theoretical PSD
P_t = 1/3 + 4/9 * cos(theta) + 2/9 * cos(2 * theta);

% Using the estimated PSD
P_e = fftshift(abs(fft(ry_e, 100)));

figure()
plot(theta, P_e, theta, P_t);
xlabel('\theta');
ylabel('P(e^{j\theta})');
h = legend('$\hat{P}_{y}(e^{j\theta})$', '$P_{y}(e^{j\theta})$');
set(h, 'Interpreter', 'latex');
saveas(gcf,'assign23c','png');
