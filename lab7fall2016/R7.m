hsize = [5,11,5]
sigma = [1.5,3,3]

for i = 1:3
    figure(i)
    imagesc(fspecial('gaussian',hsize(i),sigma(i)))
    title(sprintf('hsize : %d, sigma : %d',hsize(i),sigma(i)))
end