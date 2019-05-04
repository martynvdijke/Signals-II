clear var;
close all;
clc;

% A 
mu = 0;
sigma =1;
N_length = 1000;
%x_1 = normrnd(mu,sigma,[N,1]);
%x_2 = normrnd(mu,sigma,[N,1]);

%% N_1

N = 1;
x_1 = normrnd(mu,sigma,[N_length,1]);
x_2 = normrnd(mu,sigma,[N_length,1]);
Y_n1 = x_1 ;
x_21 = x_2
figure('Name','Plot A','NumberTitle','off')
subplot(2,2,1);
grid on;
scatter(x_2,Y_n1,'.');
title('$ N = 1  $','Interpreter','LaTex')
xlabel('$ x_2  $','Interpreter','LaTex')
ylabel('$ y_1  $','Interpreter','LaTex')
u_x1 = mean(x_2);
U_n1 = mean(Y_n1);
%% N_2 

N = 2;
x_1 = normrnd(mu,sigma,[N_length,1]);
x_2 = normrnd(mu,sigma,[N_length,1]);
Y_n2 = (x_1 + x_2) / N; 
x_22 = x_2
subplot(2,2,2);
grid on;
scatter(x_2,Y_n2,'.');
title('$ N = 2  $','Interpreter','LaTex')
xlabel('$ x_2  $','Interpreter','LaTex')
ylabel('$ y_2  $','Interpreter','LaTex')
u_x2 = mean(x_2);
U_n2 = mean(Y_n2);
%% N_5 

N = 5;
x_1 = normrnd(mu,sigma,[N_length,1]);
x_2 = normrnd(mu,sigma,[N_length,1]);
Y_n5 = (x_1 + 4*x_2) / N; 
x_25 = x_2
subplot(2,2,3);
grid on;
scatter(x_2,Y_n5,'.');
title('$ N = 5  $','Interpreter','LaTex')
xlabel('$ x_2  $','Interpreter','LaTex')
ylabel('$ y_3  $','Interpreter','LaTex')
u_x5 = mean(x_2);
U_n5 = mean(Y_n5);
%% N_100

N = 100;5
x_1 = normrnd(mu,sigma,[N_length,1]);
x_2 = normrnd(mu,sigma,[N_length,1]);
Y_n100 = (x_1 + 99*x_2) / N; 
subplot(2,2,4);
grid on;
scatter(x_2,Y_n100,'.');
title('$ N = 100  $','Interpreter','LaTex')
xlabel('$ x_2  $','Interpreter','LaTex')
ylabel('$ y_{100}  $','Interpreter','LaTex')

saveas(gcf,'../figures/Assigment20A','png');
saveas(gcf,'../figures/Assigment20A','epsc');
saveas(gcf,'../figures/Assigment20A','fig');
u_x100 = mean(x_2);
U_n100 = mean(Y_n100);

%% B
P1 = (( x_21 - u_x1).*(Y_n1 - U_n1))./( sqrt( ( x_21 - u_x1).^2.*(Y_n1 - U_n1).^2  )  );
P1 = mean(P1)
P2 = (( x_22 - u_x2).*(Y_n2 - U_n2))./( sqrt( ( x_22 - u_x2).^2.*(Y_n2 - U_n2).^2  )  );
P2 = mean(P2)
P5 = (( x_25 - u_x5).*(Y_n5 - U_n5))./( sqrt( ( x_25 - u_x5).^2.*(Y_n5 - U_n5).^2  )  );
P5 = mean(P5)
P100 = (( x_2 - u_x100).*(Y_n100 - U_n100))./( sqrt( ( x_2 - u_x100).^2.*(Y_n100 - U_n100).^2  )  );
P100 = mean(P100)
%P = 1
