x = [1,3,-4,-3,4]
X = myDFT(x)
XF = fft(x)
xReal = real(X)
xImag = imag(X)
stem(x,xReal)
hold on
stem(x,xImag)
