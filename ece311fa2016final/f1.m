load('signal.mat')
signal = x
size = length(signal)
S = fft(signal,size);
S = fftshift(S)

w = fftshift([0:size-1]/size*2*pi)
w(1:size/2)=w(1:size/2)-2*pi
fs = 100

%plotting
freq = fs*w/2/pi;
subplot(121)
plot(freq,abs(S))
title('Magnitude Response')
xlabel('frequency(Hz)')
ylabel('Magnitude')
subplot(122)
plot(freq,phase(S))
title('Phase Response')
xlabel('Frequency(Hz)')
ylabel('Phase/Radian')