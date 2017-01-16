fs = 10000
fstop = 3600
fpass = 4000
rs = 50
rp = 1

f = [fstop fpass]
a = [0 1]

dev = [10^(-rs/20) (10^(rp/20)-1)/(10^(rp/20)+1)];
[n,fo,ao,w] = firpmord(f,a,dev,fs);
b = firpm(n,fo,ao,w);
freqz(b,1,1024,fs)
title('Highpass Filter Designed to Specifications')

