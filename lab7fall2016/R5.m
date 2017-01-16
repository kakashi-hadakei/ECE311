train = imread('train.jpg');
train = double(train);
%imshow(train)
train_lab = rgb2lab(train);

imshow(train_lab,[])
title('train in lab color')

figure;
subplot(131)
imshow(train_lab(:,:,1),[])
title('channel 1')
subplot(132)
imshow(train_lab(:,:,2),[])
title('channel 2')
subplot(133)
imshow(train_lab(:,:,3),[])
title('channel 3')

train_new = lab2rgb(train_lab)
figure
imshow(uint8(train_new),[])
title('from lab to rgb')

