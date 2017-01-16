%alternative
N = 25
order = N-1
b = fir1(order,1/3,'low')
freqz(b,1)
impz(b)