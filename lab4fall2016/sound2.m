[Y,fs] = wavread('sound2')
N = length(Y);

Y_transform = fft(Y);
Y_transform = fftshift(Y_transform);
w = fftshift((0:N - 1)/N*2*pi);
w(1:N/2) = w(1:N/2) - 2*pi;
omega = fs*w/1000/2/pi;%kHz

plot(omega,abs(Y_transform))
title('magnitude spectrum of sound2')
xlabel('f(kHz)')
ylabel('X(f)')
grid on

M = 200
P = 2048
D = 1
[stdft,analog,shift] = mySTDFT(Y,M,D,P,fs);
figure
imagesc(shift,analog/2/pi/1000,abs(stdft));
axis('xy')
title('spectrogram of sound 2')
xlabel('time')
ylabel('frequency(kHz)')

%filter design ***********************************

%rp = 1
%a = [1 0];
%fs = 44100
%f = [2000,10000];
%rs = 60 
%dev = [(10^(rp/20)-1)/(10^(rp/20)+1)  10^(-rs/20)];
%[n,fo,mo,w] = firpmord(f,a,dev,fs);
%b = firpm(n,fo,mo,w)


%B = fft(b,N);
%newY = B'.*fft(Y);
%newy = ifft(newY);
%filter design **********************************


fil_sound2 = wden(Y,'sqtwolog','s','mln',4,'sym4');
%fil_sound2 = wden(Y,'minimaxi','h','mln',4,'sym4');
N_fil = length(fil_sound2);

F_transform = fft(fil_sound2);
F_transform = fftshift(F_transform);
w_fil = fftshift((0:N_fil - 1)/N_fil*2*pi);
w_fil(1:N_fil/2) = w_fil(1:N_fil/2) - 2*pi;
omega_fil = fs*w_fil/1000/2/pi;%kHz



figure
plot(omega_fil,abs(F_transform))
title('magnitude spectrum of filtered sound 2')
xlabel('f(kHz)')
ylabel('X(f)')
grid on
soundsc(newy,fs)

[stdft,analog,shift] = mySTDFT(newy,M,D,P,fs);
figure
imagesc(shift,analog/2/pi/1000,abs(stdft));
axis('xy')
title('filtered spectrogram of sound 2')
xlabel('time')
ylabel('frequency(kHz)')

soundsc(fil_sound2,fs)



