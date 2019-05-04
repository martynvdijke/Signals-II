clear all;
close all;
clc;

% Prepare variables
M = 1000;
L = 10;
mu = 0;
sigma = 1;

% Generate two random IID gaussian sets 
x = normrnd(mu, sigma, 1, M);
z = normrnd(mu, sigma, 1, M);

% Determine the cross correlation between x and z
y = crosscor(x, z, L);

figure();
hold on;
stem(-L:L, y);
hold off;
xlabel('l');
ylabel('r_{xy}[l]');
saveas(gcf,'assign25','png');