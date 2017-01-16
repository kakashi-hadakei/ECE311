%%%%%%Part 1
load clown
figure(1)
imagesc(X)
colormap(map)
%%%%%%Part 2
figure(2)
subplot(2,1,1)
plot(X(17,:))
subplot(2,1,2)
plot(X(49,:))
%%%%%%Part 3
figure(3)
trans_clown = transpose(X)
colormap(map)
imagesc(trans_clown)
