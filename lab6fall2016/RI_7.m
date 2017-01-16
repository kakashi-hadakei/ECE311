[row,col] = size(X);
X_delta = zeros(row,col);
for i = 1:row
X_delta(i,:) = X(i,:) - mean; %mean vector from last report item
end

R = X_delta' * X_delta;
[U,S,V] = svd(R);

%eigen values
eigen = diag(S);
eigen_values = eigen(1:100);

%eigen_vector
eigen_vectors = U(:,1:100);
figure(1)
plot(eigen_values)
title('eigenvalues')
xlabel('index')
ylabel('eigenvalues')

figure(2)
first_4 = U(:,1:4);
reshape_first_4 = reshape(first_4,[60,320]);
colormap gray
imagesc(reshape_first_4)
title('reshaped first 4 eigenvectors')

fif_hund = zeros(4800,2);
fif_hund(:,1) = eigen_vectors(:,50);
fif_hund(:,2) = eigen_vectors(:,100);
reshape_fif_hund = reshape(fif_hund,[60,160]);
figure(3)
colormap gray
imagesc(reshape_fif_hund)
title('reshaped 50th and 100th eigenvectors')