function [X] = myfft(x)
if (mod(length(x),2) == 1)
    X = myMatrixDFT(x,length(x));
else
    N = length(x);
    T = exp(-j*2*pi*[0:N-1]/N);
    even = x(1:2:length(x)-1);
    odd = x(2:2:length(x));
    Xe = myfft(even);
    Xo = myfft(odd);
    X = [Xe,Xe] + T.*[Xo,Xo];
end
end