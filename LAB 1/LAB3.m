%LAB 23-09-2016
close all;
clear all;
%% Assigment 6
% N = 11;
% % -5 : 5 
% % % sin( pi*n/3) / pi*n
% n = 0:0.1:1000;
% h = sin(pi.*n/3) ./ (pi .* n);
% % figure()
% % stem(n,h)
% % xlabel('$n $','Interpreter','LaTex')
% % ylabel('$\tilde{h}[n]$','Interpreter','LaTex')
% % saveas(gcf,'figures/Assigment6b','epsc');
% % saveas(gcf,'figures/Assigment6b','fig');
% 
% x_2 = sin(pi/6 * n) + sin(5*pi/6*n);
% x_3 = conv(x_2,h);
% sound(x_2);
% pause(5);
% sound(x_3);

%You hear a more higher tone not as dove toon as the original, it s more
%clearer tone with not as many bass as the original tone.
%% Assigment 8
f = 4000;
A = 1;
phi = 0;
fs =4*10^3;
N = 10000;
1/fs*10;

n = 0:N-1;
time = 0: 0.1*1/fs: 10;
theta = 2*pi*(f/fs);
x = A*sin(theta.*n+phi);

% x_c = A*sin(theta.*time+phi) ;
% figure();
% grid on;
% stem(n,x);hold on;
% plot(time,x_c,'color','r')
% xlabel('$t \, \, [sec \cdot 10^{-3}]$','Interpreter','LaTex')
% ylabel('$y $','Interpreter','LaTex')
% h = legend('$ x[n] = sin(\theta n + \phi)$','$x_c(t) = sin(\theta t + \phi)$','Location','northwest');
% set(h,'Interpreter','latex')
%saveas(gcf,'figures/Assigment8','epsc');
%saveas(gcf,'figures/Assigment8','fig');

sound(x);

%% Asigment 9

f_s  = 0.5;
f = 0.2;
phi = pi/4;
n = 0:0.1:2;

f2 = 0.2;

omega = 2*pi.*f;
T_s = 1/f_s
F_nor = omega.*(T_s)

omega2 = 2*pi.*f2;
T_s = 1/f_s
F_nor2 = omega2.*(T_s)

%x_c = cos(2*pi*f*t+ phi);
x_n2 = cos((F_nor.*n)+ phi);
%x_n3 = cos((2*pi-F_nor).*n-phi);
x_n5 = cos((F_nor2.*n)+phi);
%x_c1 = cos(2*pi*(f+F_s/2)*t+ phi);




figure();
grid on;
hold on;
stem(n,x_n2);hold on;
%stem(n,x_n4);hold on;
%stem(n,x_n3);hold on;
stem(n,x_n5);hold on;
%plot(t,x_c2);hold on;
% xlabel('$t \, \, [sec \cdot 10^{-3}]$','Interpreter','LaTex')
% ylabel('$y $','Interpreter','LaTex')
% h = legend('$ x[n] = sin(\theta n + \phi)$','$x_c(t) = sin(\theta t + \phi)$','Location','northwest');
% set(h,'Interpreter','latex')
% saveas(gcf,'figures/Assigment9','epsc');
% saveas(gcf,'figures/Assigment9','fig');

%between 0 and 0.75 Hz
