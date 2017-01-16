train = imread('train.jpg');
meanK_first = unsharpMask(train,meanFilter(train,7),10);
meanK_second= unsharpMask(train,meanFilter(train,20),10);
gaussian_first=unsharpMask(train,gaussianFilter(train,7,1),10);
gaussian_second=unsharpMask(train,gaussianFilter(train,20,1),10);

figure(1)
subplot(121)
imshow(meanK_first);
title('mean filter, kernelsize= 7');
subplot(122)
imshow(meanK_second);
title('mean filter,kernelsize = 50');
figure(2)
subplot(121)
imshow(gaussian_first);
title('gaussian filter kernel size = 7');
subplot(122)
imshow(gaussian_second);
title('gaussian filter kernel size = 50')

