N = 40;
cutoff = pi/2
M = (N-1)/2
w = fftshift((0:N-1)/N*2*pi);   
w(1:N/2) = w(1:N/2)-2*pi;
Dw = zeros(1,length(w))
Dw(11:30) = 1

Gw = Dw.*exp(-i*M*w)
gn = real(ifft(ifftshift(Gw)))
wn = rectwin(N)
hn = wn .* real(gn')
figure(1)
stem([0:N-1],hn)
grid on
title('impulse response')
xlabel('n')
ylabel('h(n)')

size = 128

H = fft(hn,size)
H = fftshift(H)
o = fftshift((0:size-1)/size*2*pi)
o(1:size/2) = o(1:size/2) - 2*pi;
figure(2)
subplot(211)
plot(o,mag2db(abs(H)))
title('magnitude response')
xlabel('w')
ylabel('dB')
grid on
subplot(212)
plot(o,phase(H))
title('phase response')
xlabel('w')
ylabel('phase')
grid on 

