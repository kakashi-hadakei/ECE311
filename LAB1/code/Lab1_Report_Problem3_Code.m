x = linspace(0,5,100)
y = (x.^2).* log(x).* sin(x)
plot(x,y)
grid on