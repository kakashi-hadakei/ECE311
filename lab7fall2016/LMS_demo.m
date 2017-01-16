N = 500
K = 30
x = randn(N,1);
h = fir1(K,0.5);
z = 0.1*randn(N,1);
d = filter(h,1,x) + z;
mu = 0.01;

w = zeros(K+1,1)
for n = 1:N-K
    xn = x(n+K:-1:n);
    en = d(n+K) - xn .* w;
    w = w+mu.*en.*xn;
    
    clf;
    stem(h,'r');
    hold on
    stem(w,'b');
    title(sprintf('Iteration %d',n))
    pause(0.01)
end