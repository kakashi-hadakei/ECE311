b = [1,0]
a = [1,(exp(j*8*pi/10))+(exp(-j*8*pi/10)),1]
H = tf(b,a,-1)
N = 35
subplot(1,2,1)
pzplot(H)
subplot(1,2,2)
impz(b,a,N)

n = [0:N-1]
x = cos(8*pi/10*n)
X = fft(x)
H = fft(impz(b,a,N))
H = H'
y = ifft(X.*H)
figure(2)
stem(y)