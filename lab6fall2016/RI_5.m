x = [1,1,4,-4,-3,2,5,-6,3,2,4,-2,5,9,-8,4];
F = dftmtx(length(x))
inverse_F = 1/length(x) * F'
A = inverse_F' * inverse_F