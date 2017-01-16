load('samplerate.mat')
signal = x

%part1
size = length(signal)
S = fft(signal,size);
S = fftshift(S)

w = fftshift([0:size-1]/size*2*pi)
w(1:size/2)=w(1:size/2)-2*pi
fs = 40

%plotting
freq = fs*w/2/pi;
figure(1)
subplot(121)
plot(freq,abs(S))
title('Magnitude Response')
xlabel('frequency(Hz)')
ylabel('Magnitude')
subplot(122)
stem(signal)
title('Signal in time domain')
xlabel('n')
ylabel('signal')

%part2
U = 3
D = 
signal_up = upsample(signal,U);
sizeU = length(signal_up);
SU = fftshift(fft(signal_up));
wU = fftshift([0:sizeU-1]/sizeU*2*pi);
wU(1:sizeU/2) = wU(1:sizeU/2) - 2*pi;
fsU = U*fs
freqU = fsU*wU/2/pi;

figure(2)
subplot(121)
plot(freqU,(abs(SU)))
title('Spectrum after upsampling before filtering')
xlabel('frequency(Hz)')
ylabel('Magnitude')
subplot(122)
stem(signal)
title('Upsampled Signal in time domain')
xlabel('n')
ylabel('signal')

%part3
filtered = zeros(length(SU),2);
filtered(:,1) = freqU;
filtered(:,2) = (SU(1,:))';
filtered(1:30,2) = 0;
filtered(92:120,2) = 0;
figure(3)
subplot(121)

filtered(:,2) = U * filtered(:,2);
plot(filtered(:,1),(abs(filtered(:,2))))
title('Upsampled spectrum after filtering')
xlabel('frequency(Hz)')
ylabel('Magnitude')
subplot(122)
signal_up_filter = ifft(ifftshift((filtered(:,2))))
stem(signal_up_filter)
title('Upsampled filtered signal in time domain')
xlabel('n')
ylabel('signal')


%part4
signal_down = downsample(real(signal_up_filter),D);


sizeD = length(signal_down);
SD = fftshift(fft(signal_down));
wD = fftshift([0:sizeD-1]/sizeD*2*pi);
wD(1:sizeD/2) = wD(1:sizeD/2) - 2*pi;
fsD = fsU/D
freqD = fsD*wD/2/pi;
figure(4)
subplot(121)
plot(freqD,(abs(SD)))
title('Final sample after downsampling')
xlabel('frequency(Hz)')
ylabel('Magnitude')
subplot(122)
stem(signal_down)
title('After Downsample')
xlabel('n')
ylabel('signal')














