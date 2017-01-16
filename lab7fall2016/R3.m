image1 = imread('image1.jpg')
image1 = double(image1)

h = [1/8,1/16,1/8;
    1/16,1/4,1/16;
    1/8,1/16,1/8]

c = conv2(h,image1)
colormap gray
imagesc(c)
title('image1 after lowpass filter')

