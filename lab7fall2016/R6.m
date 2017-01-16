train = imread('train.jpg');
out = meanFilter(train,7);
imshow(out)
title('Averaging blur')

