train = imread('train.jpg');
out = gaussianFilter(train,7,1);
imshow(out)
title('gaussian blur')