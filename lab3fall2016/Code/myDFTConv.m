function [y] = myDFTConv(x,h)
total = length(x)+length(h)-1;
X = fft(x,total);
H = fft(h,total);
Y = X .* H;
y = ifft(Y)
end 

