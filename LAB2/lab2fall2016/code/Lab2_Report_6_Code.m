w1 = rectwin(20);
w2 = triang(20);
w3 = hamming(20);
w4 = hann(20);
w5 = kaiser(20,0.1);

W1 = fft(w1,512)
W2 = fft(w2,512)
W3 = fft(w3,512)
W4 = fft(w4,512)
W5 = fft(w5,512)

W1 = fftshift(W1)
W2 = fftshift(W2)
W3 = fftshift(W3)
W4 = fftshift(W4)
W5 = fftshift(W5)

w = fftshift((0:511)/512*2*pi);
w(1:256) = w(1:256) - 2*pi;

response1 = mag2db(abs(W1))
response2 = mag2db(abs(W2))
response3 = mag2db(abs(W3))
response4 = mag2db(abs(W4))
response5 = mag2db(abs(W5))

figure(1)
subplot(1,2,1);
stem(w1);
title('rectangular window')
xlabel('n')
ylabel('w[n]')
subplot(1,2,2)
plot(w,response1)
title('Magnitude Response of Rectangular Window')
xlabel('w')
ylabel('decibel(dB)')

figure(2)
subplot(1,2,1)
stem(w2)
title('triangular window')
xlabel('n')
ylabel('w[n]')
subplot(1,2,2)
plot(w,response2)
title('Magnitude Response of Triangular Window')
xlabel('w')
ylabel('decibel(dB)')

figure(3)
subplot(1,2,1)
stem(w3)
title('hamming window')
xlabel('n')
ylabel('w[n]')
subplot(1,2,2)
plot(w,response3)
title('Magnitude Response of Hamming Window')
xlabel('w')
ylabel('decibel(dB)')

figure(4)
subplot(1,2,1)
stem(w4)
title('hanning window')
xlabel('n')
ylabel('w[n]')
subplot(1,2,2)
plot(w,response4)
title('Magnitude Response of Hanning Window')
xlabel('w')
ylabel('decibel(dB)')

figure(5)
subplot(1,2,1)
stem(w5)
title('kaiser window')
xlabel('n')
ylabel('w[n]')
subplot(1,2,2)
plot(w,response3)
title('Magnitude Response of Kaiser Window')
xlabel('w')
ylabel('decibel(dB)')