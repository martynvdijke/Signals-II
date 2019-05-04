clear var;
close all;
clc;

% A 
mu = 0;
sigma =1;
N_length = 1000;
x_1 = normrnd(mu,sigma,[N_length ,1]);
%x_2 = normrnd(mu,sigma,[N,1]);

%% y = 1
figure('Name','Plot A','NumberTitle','off')
n = 900;
n_x = 1:n;
y_1(1) =  1/3 * ( x_1(1) );
y_1(2) =  1/3 * ( x_1(2) + x_1( 1));

for i = 3:n
y_1(i) =  1/3 * ( x_1(i) + x_1( (i-1)) + x_1( (i-2)));
y_2( (i-1)) = y_1(i);
end
Y_2(2) = y_1(1)
y_2(900) = y_1(899);

subplot(2,2,1);
scatter(y_1,y_2,'.');
grid on;
title('$ Y_1  $','Interpreter','LaTex')
xlabel('$ y[n]  $','Interpreter','LaTex')
ylabel('$ y[n + 1]  $','Interpreter','LaTex')


%% Y =2 
n = 900;
n_x = 1:n;
y_1(1) =  1/3 * ( x_1(1) );
y_1(2) =  1/3 * ( x_1(2) + x_1( 1));
Y_2(2) = y_1(1)
for i = 3:n
y_1(i) =  1/3 * ( x_1(i) + x_1( (i-1)) + x_1( (i-2)));
y_2( (i-2)) = y_1(i);
end
y_2(900) = y_1(899);
y_2(899) = y_1(898);

subplot(2,2,2);
scatter(y_1,y_2,'.');
grid on;
title('$ Y_2  $','Interpreter','LaTex')
xlabel('$ y[n] $','Interpreter','LaTex')
ylabel('$ y[n +2]  $','Interpreter','LaTex')

%% Y_3 
n = 900;
n_x = 1:n;
y_1(1) =  1/3 * ( x_1(1) );
y_1(2) =  1/3 * ( x_1(2) + x_1( 1));
y_1(3) =  1/3 * ( x_1(3) + x_1( 2) + x_1(1));

Y_2(2) = y_1(1)
Y_2(3) = y_1(2)
for i = 4:n
y_1(i) =  1/3 * ( x_1(i) + x_1( (i-1)) + x_1( (i-2)));
y_2( (i-3)) = y_1(i);
end
y_2(900) = y_1(899);
y_2(899) = y_1(898);
y_2(898) = y_1(897);

subplot(2,2,3);
scatter(y_1,y_2,'.');
grid on;
title('$ Y_3  $','Interpreter','LaTex')
xlabel('$ y[n]  $','Interpreter','LaTex')
ylabel('$  y[n+3 ] $','Interpreter','LaTex')

%% Y_4 
n = 900;
n_x = 1:n;
y_1(1) =  1/3 * ( x_1(1) );
y_1(2) =  1/3 * ( x_1(2) + x_1( 1));
y_1(3) =  1/3 * ( x_1(3) + x_1( 2) + x_1(1));
y_1(4) =  1/3 * ( x_1(4) + x_1( 3) + x_1(2));
Y_2(2) = y_1(1)
Y_2(3) = y_1(2)
Y_2(4) = y_1(3)
for i = 5:n
y_1(i) =  1/3 * ( x_1(i) + x_1( (i-1)) + x_1( (i-2)));
y_2( (i-4)) = y_1(i);
end
y_2(900) = y_1(899);
y_2(899) = y_1(898);
y_2(898) = y_1(897);
y_2(897) = y_1(896);

subplot(2,2,4);
scatter(y_1,y_2,'.');
grid on;
title('$ Y_4  $','Interpreter','LaTex')
xlabel('$ y[n]  $','Interpreter','LaTex')
ylabel('$ y[n+4]  $','Interpreter','LaTex')

saveas(gcf,'../figures/Assigment22','png');
saveas(gcf,'../figures/Assigment22','epsc');
saveas(gcf,'../figures/Assigment22','fig');