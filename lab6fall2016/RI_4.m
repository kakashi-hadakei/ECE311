x = [1,1,4,-4,-3,2,5,-6,3,2,4,-2,5,9,-8,4];
F = dftmtx(length(x))

subplot(121)
imagesc(real(F))
axis('xy')
title('real part of F')
subplot(122)
imagesc(imag(F))
axis('xy')
title('imaginary part of F')