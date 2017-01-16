load NMRSpec
ST = fft(st);
ST = fftshift(ST);
w = fftshift((0:1023)/1024*2*pi);
w(1:512) = w(1:512)-2*pi;
subplot(1,2,1)
plot(w,abs(ST));
title('Magnitude Spectrum X(w)')
xlabel('w')
ylabel('Magnitude')
subplot(1,2,2)
plot(w,angle(ST))
title('Phase Spectrum X(w)')
xlabel('w')
ylabel('Phase')
Omega = 2000 * w;
figure
subplot(1,2,1)
plot(Omega,abs(ST));
title('Magnitude Spectrum X(Ω)')
xlabel('Ω(Hz)')
ylabel('Magnitude')
subplot(1,2,2)
plot(Omega,angle(ST));
title('Phase Spectrum X(Ω)')
xlabel('Ω(Hz)')
ylabel('Phase')