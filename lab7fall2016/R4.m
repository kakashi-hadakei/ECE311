image2 = imread('image2.jpg')
image2 = double(image2)
h = [-1,-1,-1;
    -1,8,-1;
    -1,-1,-1]

c = conv2(h,image2)
colormap gray
imagesc(c)
title('image2 after highpass filter')


