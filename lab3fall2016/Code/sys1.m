function [y] = sys1(a,x)
B = [0.3,-2]
A = [1,-a]
y = filter(B,A,x)
end