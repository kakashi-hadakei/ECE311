function [y] = sys2(a,x)
    for i = 1:length(x)
        if i == 1
            y(i) = x(i) * x(i);
        else
            y(i) = a * y(i-1) + x(i) * x(i);
        end
    end
end