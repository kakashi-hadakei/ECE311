function X = myDFT(x)
    X = zeros(1,length(x))
    W = 2*pi/length(x)
    for k = 0:length(x)-1
        for n = 0:length(x)-1
            X(k+1) = X(k+1) + x(n+1) * exp(-j * W * k .* n)
        end
    end 
end 