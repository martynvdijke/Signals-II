clear all;
close all;
clf;

% Read audio file
[y, fs] = audioread('audio_sin.wav');
N = length(y);
theta = -pi:(2 * pi / (N - 1)):pi;

audioplayer (y, fs)


f = fftshift(fft(y, N));
plot(theta, abs(f));

% Frequency peaks at: theta = 0.02515 and theta = 1.257
fu = fs * 0.02515 / (2 * pi)
F_s = fs * 1.257/ (2 * pi)

Hd = filter_fu();
%sound(y);
pause(5);

y = filter(Hd,y);
%sound(y);
f = fftshift(fft(y, N));
audiowrite('aduio_sin_filterd.wav', y, fs);
figure();
plot(theta, abs(f));