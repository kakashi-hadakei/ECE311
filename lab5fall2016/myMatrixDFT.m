function [Xk,merge] = myMatrixDFT(xn,N)
n = [0:1:N-1];
k = [0:1:N-1];

base = exp(-j*2*pi/N);
exponent = n' * k;
DFT_Matrix = base .^ exponent;
Xk = xn * DFT_Matrix;
end