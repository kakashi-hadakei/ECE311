load speechsig
P = 128
step = 2

M = 128
fftlength = 128
stepsize = 2
fs = 1
[stdftH,analogH,shiftH] = mySTDFTHamming(x,M,stepsize,fftlength,fs)
imagesc(shiftH,analogH/2/pi/1000,abs(stdftH))
axis('xy')
title('spectrogram with Hamming window')
xlabel('time')
ylabel('frequency(kHz)')

[stdft,analog,shift] = mySTDFT(x,M,stepsize,fftlength,fs)
figure
imagesc(shift,analog/2/pi/1000,abs(stdft))

axis('xy')
title('spectrogram with rectangular window')
xlabel('time')
ylabel('frequency(kHz)')
