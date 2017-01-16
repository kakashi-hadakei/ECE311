load spectrogram
M = 5
P = 128
D = 5
[stdft,analog,shift] = mySTDFT(x,M,D,P,fs)
imagesc(shift,analog/2/pi,abs(stdft))
axis('xy')
title('spectrogram')
xlabel('time(s)')
ylabel('frequency(Hz)')
