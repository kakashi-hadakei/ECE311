N = 10;
n = 0:N-1;
x = sin(2*pi*5*0.02*n);
X = fft(x)
X = fftshift(X);
w = fftshift((0:N-1)/N*2*pi);
w(1:N/2) = w(1:N/2) - 2*pi;
subplot(1,2,1)
stem(w,abs(X));
title('Magnitude Response')
xlabel('w')
ylabel('Magnitude')
subplot(1,2,2)
stem(w,angle(X));
title('Phase Response')
xlabel('w')
ylabel('Phase')