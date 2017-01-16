function [transform] = merge(odd,even,x)
N = length(odd) + length(even);
T = exp(-j*2*pi/N*[0:N-1]);

if(length(odd) == 1)
%if passed-in size is 1, DFT is required
%else store the value and build the next transform
Xe = myMatrixDFT(even,1)
Xo = myMatrixDFT(odd,1)
transform = [Xe,Xe] + T.*[Xo,Xo]
end


    






end