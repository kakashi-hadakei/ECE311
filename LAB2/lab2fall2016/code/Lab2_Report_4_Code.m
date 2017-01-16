load signal
X = fft(x,300);
X = fftshift(X)
w = fftshift((0:299)/300*2*pi);
w(1:150) = w(1:150) - 2*pi
subplot(2,2,1)
plot(w,abs(X))
title('Magnitude of X(w)')
xlabel('w')
ylabel('Magnitude')
subplot(2,2,2)
plot(w,angle(X))
title('Phase of X(w)')
xlabel('w')
ylabel('Phase')
Omega = 200*w;
subplot(2,2,3)
plot(Omega,abs(X))
title('Magnitude of X(Ω)')
xlabel('Ω(Hz)')
ylabel('Magnitude')
subplot(2,2,4)
plot(Omega,angle(X))
title('Phase of X(Ω)')
xlabel('Ω(Hz)')
ylabel('Phase')

