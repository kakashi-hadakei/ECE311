image = imread('image1.jpg')
filter = [-1,-1,-1;
          -1,8,-1;
          -1,-1,-1]
filter_image = conv2(double(image),filter,'same');
imshow(uint8(filter_image));
spectrum = fft2(filter_image);
spectrum = fftshift(spectrum)

M = length(image)
N = length(image(1,:))

kX = fftshift([0:N-1]/N*2*pi)
kX(1:N/2) = kX(1:N/2) - 2*pi
kY = fftshift(([0:M-1]/M*2*pi))
kY(1:M/2) = kY(1:M/2) - 2*pi



figure(1);
colormap hot
imagesc(kX,kY,mag2db(abs(spectrum)))
colorbar('Direction','reverse')
title('spectrum in dB')
xlabel('kx')
ylabel('ky')

figure(2);
inverted = ones(M,N)*256-filter_image;
imshow(uint8(inverted))
title('inverted image')

