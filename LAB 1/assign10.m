clear all;

% Scaling factor 
K = 2;
N = 21;
% Audio file
audio = 'scale.wav';
[x, fsin] = audioread(audio);

%% SRD
% Sampling frequency is dependant on the input sampling frequency and the
% scaling factor used in the systems below
fs1 = fsin;
fs2 = fsin / K;
fs3 = fsin / K;

% First branch shows no downsampling, so input = output
y = x;
audiowrite('SRD_out1.wav', y, fs1);

% Second branch has downsampling with factor K
for n = 1:(length(x)/K)
   y(n) = x(K * n);
end

audiowrite('SRD_out2.wav', y, fs2);

% Third branch has downsampling with factor K and a preceeding LPF
theta_c = pi / K;

for n = 1:(N-1)
    w(n) = 1;
end

% Dit is ergens kut
% span = (-(N-1)/2):((N-1)/2);
% span = span';
% for n = 1:(N-1)
%    h(n) = (theta_c / pi * (sin(theta_c * span(n)) / (theta_c * span(n))));
% end
for n = 1:(N-1)
    h(n) = w(n) * (theta_c / pi * (sin(theta_c * (n - (N/2))) / (theta_c * (n - (N/2)))));
end

z = conv(x, h);

audiowrite('SRD_out3.1.wav', z, fs1);

for n = 1:(length(z) / K)
    y(n) = z(K * n);
end

audiowrite('SRD_out3.wav', y, fs3);

%% SRI
% Sampling frequency is dependant on the input sampling frequency and the
% scaling factor used in the systems below
fs1 = fsin;
fs2 = fsin * K;
fs3 = fsin * K;

% First branch has no upsampling, so input = output
y = x;

audiowrite('SRI_out1.wav', y, fs1);

% Second branch has upsampling with factor K
for n = 1:length(x)
    y(K * n) = x(n);
end

audiowrite('SRI_out2.wav', y, fs2);

% Third branch has upsampling and a LPF 
for n = 1:length(x)
    z(K * n) = x(n);
end

% Do some LPF stuff
for n = 1:(N-1)
    h(n) = w(n) * (theta_c / pi * (sin(theta_c * (n - (N/2))) / (theta_c * (n - (N/2)))));
end

y = conv(z, h);

audiowrite('SRI_out3.wav', y, fs3);

