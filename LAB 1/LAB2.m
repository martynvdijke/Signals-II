%% Assigment 4
close all;
clear all;

% theta = -pi:0.001:pi;
% x= 1 + cos(theta); 
% %y = fft(x);
% m = abs(x);
% p = angle(m);  
% 
% figure()
% subplot(2,1,1);
% plot(theta,m);
% hold on;
% grid on;
% title('Magnitude')
% xlabel('$\theta \, \, [rad \cdot s^{-1}]$','Interpreter','LaTex')
% ylabel('$|H(e^{j \theta}) | $','Interpreter','LaTex')
% 
% 
% subplot(2,1,2);
% plot(theta,p);
% hold on;
% grid on;
% xlabel('$\theta \, \, [rad \cdot s^{-1}]$','Interpreter','LaTex')
% ylabel('$  \angle H(e^{j \theta})  $','Interpreter','LaTex')
% 
% title('Phase')
% saveas(gcf,'figures/Assigment4','epsc');
% saveas(gcf,'figures/Assigment4','fig');

%% Assigment 5
h_causal = [1/2 1 1/2];
theta = -pi:0.001:pi;
x= 1/2 + 1/2*exp(-2*j*theta) + exp(-j*theta); 
%y = fft(x);
m = abs(x);
p = angle(m);  

figure()
subplot(2,1,1);
plot(theta,m);
hold on;
grid on;
title('Magnitude')
xlabel('$\theta \, \, [rad \cdot s^{-1}]$','Interpreter','LaTex')
ylabel('$|H(e^{j \theta}) | $','Interpreter','LaTex')


subplot(2,1,2);
plot(theta,p);
hold on;
grid on;
xlabel('$\theta \, \, [rad \cdot s^{-1}]$','Interpreter','LaTex')
ylabel('$  \angle H(e^{j \theta})  $','Interpreter','LaTex')

title('Phase')
saveas(gcf,'figures/Assigment5','epsc');
saveas(gcf,'figures/Assigment5','fig');

