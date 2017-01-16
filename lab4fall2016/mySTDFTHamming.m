function [stdft,Omega,shift] = mySTDFTHamming(x,M,D,P,fs)
N = length(x);
n = 0:length(x)-1;
row = ceil(P/2);
col = floor((N-M)/D)+1;
stdft = zeros(row,col);

for i = 1:col
y = x(((i-1)*D +1):(i-1)*D+M);
w = hamming(M)
Y = abs(fft(w.*y,P));
stdft(:,i) = Y(1:row);
end

%shift

m = [0:col-1];
shift = D*m/fs;

%omega
w = [0:col-1]/col*2*pi;
Omega = fs*w;
end