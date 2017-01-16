load impulseresponse
N = length(h)
n = -(N-1)/2 : 1 : (N-1)/2;
n = n'

pad = 1024
H = fft(h,pad)
H = fftshift(H)
w = fftshift((0:pad - 1)/pad*2*pi);
w(1:pad/2) = w(1:pad/2) - 2*pi;
db = mag2db(abs(H))

subplot(311)
stem(n,h)
title('impulse response')
xlabel('n')
ylabel('h(n)')

subplot(312)
plot(w,db)
title('magnitude response in dB')
xlabel('w')
ylabel('dB')


subplot(313)
plot(w,phase(H))
title('phase response')
xlabel('w')
ylabel('Phase')
