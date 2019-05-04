close all;
clear var;
clear all;
%% Assigment 18

% make random signals
N = 1000;
w = randn(1,N);
mu = 0;
sigma =1;
x_1 = normrnd(mu,sigma,[N,1]);
x_2 = normrnd(mu,sigma,[N,1]);
x_3 = normrnd(mu,sigma,[N,1]);
x_4 = normrnd(mu,sigma,[N,1]);
x_5 = normrnd(mu,sigma,[N,1]);
u_n5 = 1/5 * (x_5+x_4+x_3 +x_2 +x_1); 
u_n1 = 1/1 * (x_1); 
u_n2 = 1/2 * (x_1 + x_2); 
%result = mu + sigma*randn(M,N);

figure('Name','Plot 1','NumberTitle','off');
subplot(3,1,1);
plot(u_n1)
grid on;
title('$ u_1[n]  $','Interpreter','LaTex')
xlabel('$ n  $','Interpreter','LaTex')
ylabel('$  x[n] $','Interpreter','LaTex')

subplot(3,1,2);
plot(u_n2)
grid on;
title('$  u_2[n]  $','Interpreter','LaTex')
xlabel('$ n  $','Interpreter','LaTex')
ylabel('$ x[n]  $','Interpreter','LaTex')

subplot(3,1,3);
plot(u_n5)
title('$  u_5[n]  $','Interpreter','LaTex')
grid on;
xlabel('$ n  $','Interpreter','LaTex')
ylabel('$ x[n]  $','Interpreter','LaTex')

saveas(gcf,'../figures/Assigment181','png');
saveas(gcf,'../figures/Assigment181','epsc');
saveas(gcf,'../figures/Assigment181','fig');



disp('done computing');