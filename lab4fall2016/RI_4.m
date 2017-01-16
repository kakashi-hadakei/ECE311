rp = 2
a = [1,0]
fs = 1
f = [0.3/2,0.36/2]
rs = 50
dev = [(10^(rp/20)-1)/(10^(rp/20)+1)  10^(-rs/20)]
[n,fo,mo,w] = firpmord(f,a,dev,fs)
b = firpm(n,fo,mo,w)
freqz(b,1,1024)
title('lowpass filter')
figure;
impz(b,1)