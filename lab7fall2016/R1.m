[sound,fs] = audioread('audioclip.wav');
sizeO = length(sound);
SO = fftshift(fft(sound));
w = fftshift([0:sizeO-1]/sizeO*2*pi);
w(1:sizeO/2) = w(1:sizeO/2) - 2*pi;
freqO = fs*w/2/pi;
figure(6)
plot(freqO,mag2db(abs(SO))) 


U = 2
D = 3
sound_up = upsample(sound,U);
sizeU = length(sound_up);
SU = fftshift(fft(sound_up));
wU = fftshift([0:sizeU-1]/sizeU*2*pi);
wU(1:sizeU/2) = wU(1:sizeU/2) - 2*pi;
fsU = 2*fs
freqU = fsU*wU/2/pi;
figure(1)
subplot(121)
plot(freqU,mag2db(abs(SU)))
title('Spectrum after upsampling before filtering')
xlabel('frequency(Hz)')
ylabel('Magnitude(dB)')
subplot(122)
plot(wU,mag2db(abs(SU)))



%filtering
filtered = zeros(length(SU),3);
filtered(:,1) = freqU;
filtered(:,2) = (SU(:,1))';
filtered(:,3) = (SU(:,2))';
filtered(1:337495,2:3) = 0;
filtered(1012495:1350000,2:3) = 0;
figure(2)
subplot(121)
filtered(:,2:3) = 2 * filtered(:,2:3);
plot(filtered(:,1),mag2db(abs(filtered(:,2:3))))
title('Upsampled spectrum after filtering')
xlabel('frequency(Hz)')
ylabel('Magnitude(dB)')
subplot(122)

plot(wU',mag2db(abs(filtered(:,2:3))))

%go back to time domain
sound_up_filter = ifft(ifftshift((filtered(:,2:3))))
figure(3)
plot(real(sound_up_filter))
hold on
plot(sound_up)

sound_down = downsample(real(sound_up_filter),D);
figure(4)
plot(sound_down)
hold on
plot(sound)

sizeD = length(sound_down);
SD = fftshift(fft(sound_down));
wD = fftshift([0:sizeD-1]/sizeD*2*pi);
wD(1:sizeD/2) = wD(1:sizeD/2) - 2*pi;
fsD = fsU/D
freqD = fsD*wD/2/pi;
figure(5)
plot(freqD,mag2db(abs(SD)))
title('Final sample after downsampling')
xlabel('frequency(Hz)')
ylabel('Magnitude(dB)')





