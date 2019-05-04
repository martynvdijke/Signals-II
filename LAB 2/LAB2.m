%% Signals LAB 2
close all;
clear var;
clc
%% Assigment 12

% f_1 = 8;
% f_2 = 9;
% f_s = 64;
% 
% theta_1 = 2*pi*f_1/f_s;
% theta_2 = 2*pi*f_2/f_s;
% 
% n = 0:1:31;
% x_1 = sin(theta_1 .* n);
% x_2 = sin(theta_2 .* n);
% 
% % Plotting 
% N = 32;
% Y1 = fft(x_1,N);
% Y1 = fftshift(Y1);
% 
% Y2 = fft(x_2,N);
% Y2 = fftshift(Y2);
% 
% figure();
% grid on;
% w = 2*pi * (0:(N-1)) / N;
% w = fftshift(w);
% theta2 = -pi:(2 * pi / ((N) - 1)):pi;
% stem(theta2,abs(Y1));
% 
% xlabel('$ \theta   $','Interpreter','LaTex')
% ylabel('$ |X(e^{j \theta })|    $','Interpreter','LaTex')
% saveas(gcf,'../figures/Assigment12A1','png');
% saveas(gcf,'../figures/Assigment12A1','epsc');
% saveas(gcf,'../figures/Assigment12A1','fig');
% 
% figure();
% theta2 = -pi:(2 * pi / ((N) - 1)):pi;
% stem(theta2,abs(Y2));
% 
% hold on;
% grid on;
% 
% xlabel('$ \theta   $','Interpreter','LaTex')
% ylabel('$ |X(e^{j \theta })|    $','Interpreter','LaTex')
% saveas(gcf,'../figures/Assigment12A2','png');
% saveas(gcf,'../figures/Assigment12A2','epsc');
% saveas(gcf,'../figures/Assigment12A2','fig');

%B
%Alliasing ? -> the first signal is a multiple of the f_s therefore the
%signal is being mapped to the fundamental freqency

%% Assigment 14

%% A 
a_1 = 1;
a_2 = 1;
f_s = 1000;
f_1 = 175;
f_2 = 200;



%x = a_1*sin(2*pi*f_1*t) + a_2*sin(2*pi*f_2*t);
theta_1 = 2*pi*f_1/f_s
theta_2 = 2*pi*f_2/f_s
%D_theta = (theta_2 - theta_1)
%0.89*(2*pi);

N_min = 36
n=0:(N_min - 1);
x_1 = a_1*sin(theta_1 .* n) + a_2*sin(theta_2 .* n);


% Plotting 

%% B
N = N_min;
%adding the zero padding
x_2 = [x_1 , zeros(1, 5*N_min) ];
Y = fft(x_2,(5*N));
Y = fftshift(Y);
figure('Name','Plot B','NumberTitle','off');
grid on;
%theta2 = -pi:(2 * pi / ((5*N) - 1)):pi;
theta2 = -90:1:89;
theta2 = theta2 / N * 2 * pi;
plot(theta2,abs(Y));
xlabel('$ \theta   $','Interpreter','LaTex')
ylabel('$ |X(e^{j \theta })|    $','Interpreter','LaTex')
saveas(gcf,'../figures/Assigment14B1','png');
saveas(gcf,'../figures/Assigment14B1','epsc');
saveas(gcf,'../figures/Assigment14B1','fig');

%% C
N= 36;
x_3 = [x_1 , zeros(1, 5*N_min) ];
format long

Y = fft(x_1,(N));
Y = fftshift(Y);
figure('Name','Plot C','NumberTitle','off');
grid on;
%theta2 = -pi:( (2 * pi) / ((N) - 1)):pi;
theta2 = -18:1:17;
theta2 = theta2 / N * 2 * pi;
plot(theta2,abs(Y));
xlim([-4 4]);
xlabel('$ \theta   $','Interpreter','LaTex')
ylabel('$ |X(e^{j \theta })|    $','Interpreter','LaTex')
saveas(gcf,'../figures/Assigment14C1','png');
saveas(gcf,'../figures/Assigment14C1','epsc');
saveas(gcf,'../figures/Assigment14C1','fig');

%% D
f_2 = 185;
theta_2 = 2*pi*f_2/f_s
x_1 = a_1*sin(theta_1 .* n) + a_2*sin(theta_2 .* n);
dTheta = theta_2 - theta_1
N = (2*pi *0.89) / dTheta
N= 90;
n=0:(N - 1);
x_1 = a_1*sin(theta_1 .* n) + a_2*sin(theta_2 .* n);
Y = fft(x_1,N);
Y = fftshift(Y);
figure('Name','Plot D','NumberTitle','off')
grid on;
theta2 = -pi:(2 * pi / ((N) - 1)):pi;
plot(theta2,abs(Y));
xlabel('$ \theta   $','Interpreter','LaTex')
ylabel('$ |X(e^{j \theta })|    $','Interpreter','LaTex')
saveas(gcf,'../figures/Assigment14D1','png');
saveas(gcf,'../figures/Assigment14D1','epsc');
saveas(gcf,'../figures/Assigment14D1','fig');

%% E
x_1 = a_1*sin(theta_1 .* n) + a_2*sin(theta_2 .* n);
dTheta = theta_2 - theta_1
N_c = (2*pi *1.44) / dTheta
N= 145;
n=0:(N - 1);
x_1 = a_1*sin(theta_1 .* n) + a_2*sin(theta_2 .* n);
w = hann(N)
x_1 = x_1 .* w';
Y = fft(x_1,N);
Y = fftshift(Y);

figure('Name','Plot E','NumberTitle','off');
grid on;
theta2 = -pi:(2 * pi / ((N) - 1)):pi;
plot(theta2,abs(Y));
xlabel('$ \theta   $','Interpreter','LaTex')
ylabel('$ |X(e^{j \theta })|    $','Interpreter','LaTex')
saveas(gcf,'../figures/Assigment14E1','png');
saveas(gcf,'../figures/Assigment14E1','epsc');
saveas(gcf,'../figures/Assigment14E1','fig');


%% F
x_1 = a_1*sin(theta_1 .* n) + a_2*sin(theta_2 .* n);
dTheta = theta_2 - theta_1
N_c = (2*pi *1.44) / dTheta
N= 145;
n=0:(N - 1);
a_2 = 0.35;
x_1 = a_1*sin(theta_1 .* n) + a_2*sin(theta_2 .* n);
w = hann(N)
x_1 = x_1 .* w';
Y = fft(x_1,N);
Y = fftshift(Y);

figure('Name','Plot F','NumberTitle','off');
grid on;
theta2 = -pi:(2 * pi / ((N) - 1)):pi;
plot(theta2,abs(Y));
xlabel('$ \theta   $','Interpreter','LaTex')
ylabel('$ |X(e^{j \theta })|    $','Interpreter','LaTex')
saveas(gcf,'../figures/Assigment14F1','png');
saveas(gcf,'../figures/Assigment14F1','epsc');
saveas(gcf,'../figures/Assigment14F1','fig');



%% Assigment 16
% 
% 
% N_1 = 5;
% N_2 = 11;
% N_3 = 101;
% 
% 
% N = N_1
% n1 = -N/2:1:N/2 
% h_n1 = 1/2 .* sinc(pi/2 * n1)
% figure();
% freqz(h_n1)
% saveas(gcf,'../figures/Assigment16N5','png');
% saveas(gcf,'../figures/Assigment16N5','epsc');
% saveas(gcf,'../figures/Assigment16N5','fig');
% 
% N = N_2
% n2 = -N/2:1:N/2 
% h_n2 = 1/2 .* sinc(pi/2 * n2)
% figure();
% freqz(h_n2)
% saveas(gcf,'../figures/Assigment16N11','png');
% saveas(gcf,'../figures/Assigment16N11','epsc');
% saveas(gcf,'../figures/Assigment16N11','fig');
% 
% N = N_3
% n3 = -N/2:1:N/2 
% h_n3 = 1/2 .* sinc(pi/2 * n3)
% figure();
% freqz(h_n3)
% saveas(gcf,'../figures/Assigment16N101','png');
% saveas(gcf,'../figures/Assigment16N101','epsc');
% saveas(gcf,'../figures/Assigment16N101','fig');

