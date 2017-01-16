x = [-1,2,1,5,4]
h = [1,2,3,2]
y = myDFTConv(x,h)
y_ = conv(x,h)

stem(y)
title('x * h')
xlabel('n')
ylabel('output')