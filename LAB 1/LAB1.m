close all;
clear all;

%% Assigment 1
n = [-5, -4 , -3, -2, -1, 0 ,1, 2, 3, 4,5,6];
x = [1 0 1 0 1 0 1];
h = [0 0- 1/2 1 -1/2 0 0];

Conved = conv(x,h);
figure();
stem(n,Conved,'filled')
hold on;
grid on;
%title('Assigment 1 Convolution')
xlabel('n');
ylabel('y[n]');
saveas(gcf,'figures/Assigment1','epsc');
saveas(gcf,'figures/Assigment1','fig');
%% Assigment 3

%niet nodig
% L = 5;
% h2 = [1,1,1,0,0,0];
% x = [1,0,1,0,1,0,1];
% Convuluted = conv(x,h2)
% figure();
% stem(n,Convuluted,'filled')
% hold on;
% grid on;
% %title('Assigment 1 Convolution')
% xlabel('n');
% ylabel('y[n]');
% saveas(gcf,'figures/Assigment3a','epsc');
% saveas(gcf,'figures/Assigment3a','fig');

%b
%   -3 -2 -1 0 1 2 3
n2 = [ -3, -2, -1, 0 ,1, 2, 3, 4,5,6,7,8];
x2 = [1  0  1 0 1 0 1];
%           -3 -2 -1  0, 1, 2
h_causal = [ 0 0 1 1 1 0];
Convuluted = conv(x2,h_causal);
figure();
stem(n2,Convuluted,'filled')
hold on;
grid on;
%title('Assigment 1 Convolution')
xlabel('n');
ylabel('y[n]');
saveas(gcf,'figures/Assigment3','epsc');
saveas(gcf,'figures/Assigment3','fig');


