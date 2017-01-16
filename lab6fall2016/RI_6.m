X = loadImages('yalefaces');
mean = computeMeanVec(X)
reshape_mean = reshape(mean,[60,80])
colormap gray
imagesc(reshape_mean)
title('mean vector')