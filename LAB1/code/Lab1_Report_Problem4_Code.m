x = 0:0.2:5
f = (x.^2) .* exp(x.^0.5)
g = 3 * x.^0.5 + sin(8 * pi *x)
figure
subplot(2,1,1)
stem(x,f)
subplot(2,1,2)
stem(x,g)