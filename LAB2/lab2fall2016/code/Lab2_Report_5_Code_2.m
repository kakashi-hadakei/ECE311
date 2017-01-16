load NMRSpec
signal = st(1:32)
spectrum1 = fft(signal);
spectrum2 = fft(signal,512);
spectrum1 = fftshift(spectrum1);
spectrum2 = fftshift(spectrum2);
w1 = fftshift((0:31)/32*2*pi);
w2 = fftshift((0:511)/512*2*pi);
w1(1:16) = w1(1:16)-2*pi;
w2(1:256) = w2(1:256)-2*pi;
omega1 = 2000*w1;
omega2 = 2000*w2;
subplot(2,2,1)
plot(omega1,abs(spectrum1));
title('Magnitude spectrum of first 32 points before zero-padding')
xlabel('Ω(Hz)')
ylabel('Magnitude')
subplot(2,2,2)
plot(omega1,angle(spectrum1));
title('Phase spectrum of first 32 points before zero-padding')
xlabel('Ω(Hz)')
ylabel('Phase')
subplot(2,2,3)
plot(omega2,abs(spectrum2));
title('Magnitude spectrum of 32 points after zero-padding to 512 points')
xlabel('Ω(Hz)')
ylabel('Magnitude')
subplot(2,2,4)
plot(omega2,angle(spectrum2));
title('Phase spectrum of 32 points after zero-padding to 512 points')
xlabel('Ω(Hz)')
ylabel('Phase')