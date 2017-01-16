n = [0:63]
delta = [n == 0]
output = sys2(2,delta)
stem(n,output);
title('Impulse Response a = 2')
xlabel('n')
ylabel('h(n)')

figure(2)
output_ = sys2(0.5,delta);
stem(n,output_);
title('Impulse Response a = 0.5')
xlabel('n')
ylabel('h(n)')