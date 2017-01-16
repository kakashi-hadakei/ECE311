x = [1,4,-4,-3,2,5,-6];
h = [1,2,3,4,5];
H = convmtx(h,length(x));
y = x*H;
from_conv = conv(x,h);
y == from_conv
figure(1)
imagesc(H)
axis('xy')
title('convolution matrix')
figure(2)
stem(y,'r');
title('y')
xlabel('n')
ylabel('y')
hold on 
stem(from_conv,'b')
legend('result generated from convolution matrix','result generated from direct convolution')