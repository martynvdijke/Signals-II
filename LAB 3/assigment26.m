clear var;
close all;
clc;

%% A 

radar = load('radar.mat');
figure('Name','Plot A','NumberTitle','off')
grid on;
subplot(2,1,1);
plot(radar.trans);
hold on;
title('$ Transmitted \, Signal$','Interpreter','LaTex')

subplot(2,1,2)
grid on;
plot(radar.received);
hold on;
title('$ Recieved \, Signal$','Interpreter','LaTex')

saveas(gcf,'../figures/Assigment26A','png');
saveas(gcf,'../figures/Assigment26A','epsc');
saveas(gcf,'../figures/Assigment26A','fig');

%% B
l = 100;
%autocorralation
[ACF,lags,bounds] = autocorr(radar.trans,l);
figure('Name','Plot B','NumberTitle','off')
subplot(2,1,1);
autocorr(radar.trans,l);
%test = acf(radar.trans',l)
%figure()
%plot(test)

% sample cross correlation
[XCF,lags,bounds] = crosscorr(radar.trans,radar.received,l)
subplot(2,1,2)
title('Test');
crosscorr(radar.trans,radar.received,l)

saveas(gcf,'../figures/Assigment26B','png');
saveas(gcf,'../figures/Assigment26B','epsc');
saveas(gcf,'../figures/Assigment26B','fig');

%% C
%calulated the lag using the built in matlab build in functuin 

[acor,lag] = xcorr(radar.trans,radar.received);
[~,I] = max(abs(acor));
lagDiff = lag(I)

%% Bonus