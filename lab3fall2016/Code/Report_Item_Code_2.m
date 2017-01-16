n = [0:63]
delta = [n == 0]
output = sys1(2,delta)
stem(n,output);
title('Impulse Response a = 2')
xlabel('n')
ylabel('h(n)')