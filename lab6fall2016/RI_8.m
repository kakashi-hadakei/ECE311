image = imread('noisy_face.tiff');
mean = (computeMeanVec(X));
x_orig = reshape(image,[1,4800]);
pca = PCA_transform(mean,U(:,1:50),double(x_orig));
new = invPCAtransform(mean,U(:,1:50),pca);


imagesc(reshape(pca,[10,5]))
colormap gray
title('new basis')
figure(2)
colormap gray
imagesc(reshape(new,[60,80]))
title('original basis')