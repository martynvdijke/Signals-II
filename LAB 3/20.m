
mu = 0;
sigma =1;
%x_1 = normrnd(mu,sigma,[N,1]);
%x_2 = normrnd(mu,sigma,[N,1]);

%% N_1

N = 1;
x_1 = normrnd(mu,sigma,[N,1]);
x_2 = normrnd(mu,sigma,[N,1]);
Y_n1 = x_1 
%figure('Name','Plot N = 1','NumberTitle','off')
%grid on;
%scatter(Y_n1,N);

%% N_2 

N = 2;
x_1 = normrnd(mu,sigma,[N,1]);
x_2 = normrnd(mu,sigma,[N,1]);
Y_n2 = (x_1 + x_2) / N; 

%% N_5 

N = 5;
x_1 = normrnd(mu,sigma,[N,1]);
x_2 = normrnd(mu,sigma,[N,1]);
Y_n5 = (x_1 + 4*x_2) / N; 

%% N_100

N = 100;
x_1 = normrnd(mu,sigma,[N,1]);
x_2 = normrnd(mu,sigma,[N,1]);
Y_n100 = (x_1 + 99*x_2) / N; 