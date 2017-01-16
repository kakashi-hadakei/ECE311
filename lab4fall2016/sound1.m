[Y,fs] = wavread('sound1')
N = length(Y);
time = length(Y)/fs;
Y_transform = fft(Y);
Y_transform = fftshift(Y_transform);
w = fftshift((0:N - 1)/N*2*pi);
w(1:N/2) = w(1:N/2) - 2*pi;
omega = fs*w/1000/2/pi;%analog kHz

plot(omega,abs(Y_transform))
title('magnitude spectrum of sound1')
xlabel('f(kHz)')
ylabel('X(f)')
grid on

M = 200
P = 2048
D = 5
[stdft,analog,shift] = mySTDFT(Y,M,D,P,fs);
figure
imagesc(shift,analog/2/pi/1000,abs(stdft));
axis('xy')
title('spectrogram of sound 1')
xlabel('time')
ylabel('frequency(kHz)')


%filter
rp = 1
a = [1 0];
fs = 44100
f = [10000 10050];
rs = 60
dev = [(10^(rp/20)-1)/(10^(rp/20)+1)  10^(-rs/20)];
[n,fo,mo,w] = firpmord(f,a,dev,fs);
b = firpm(n,fo,mo,w);


B = fft(b,N);
newY = B'.*fft(Y);
newy = ifft(newY);
figure
plot(omega,abs(fftshift(newY)))
title('magnitude spectrum of filtered sound1')
xlabel('f(kHz)')
ylabel('X(f)')
grid on
soundsc(newy,fs)

[stdft,analog,shift] = mySTDFT(newy,M,D,P,fs);
figure
imagesc(shift,analog/2/pi/1000,abs(stdft));
axis('xy')
title('filtered spectrogram of sound 1')
xlabel('time')
ylabel('frequency(kHz)')


