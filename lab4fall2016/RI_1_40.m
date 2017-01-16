N = 40
n = -N:N
wc = pi/5
w0 = pi/2

lowpass = wc/pi * sinc(wc/pi * n)
highpass = [n==0] - lowpass
bandpass = cos(w0*n) .* lowpass

LOWPASS = fft(lowpass)
LOWPASS = fftshift(LOWPASS)
HIGHPASS = fft(highpass)
HIGHPASS = fftshift(HIGHPASS)
BANDPASS = fft(bandpass)
BANDPASS = fftshift(BANDPASS)

size = 2*N+1
w = fftshift((0:size - 1)/size*2*pi);
w(1:size/2) = w(1:size/2) - 2*pi;

figure(1)
subplot(121)
stem(n,lowpass)
title('impulse response:ideal lowpass filter')
xlabel('n')
ylabel('h(n)')
subplot(122)
plot(w,abs(LOWPASS))
title('magnitutde response:ideal lowpass filter')
xlabel('w')
ylabel('H(w)')



figure(2)
subplot(121)
stem(n,highpass)
title('impulse response:ideal highpass filter')
xlabel('n')
ylabel('h(n)')
subplot(122)
plot(w,abs(HIGHPASS))
title('magnitude response:ideal highpass filter')
xlabel('w')
ylabel('H(w)')

figure(3)
subplot(121)
stem(n,bandpass)
title('impulse response:ideal bandpass filter')
xlabel('n')
ylabel('h(n)')
subplot(122)
plot(w,abs(BANDPASS))
title('impulse response:ideal bandpass filter')
xlabel('w')
ylabel('H(w)')

