function [ X ] = loadImages( imgpath )
%LOADIMAGES loads all png images in path, 
%converts to grayscale, resize to  reshape
%to row

filelist = dir(strcat(imgpath, '/*.gif'));
M = length(filelist);

[h, w, ~] = size(imread(strcat(imgpath, '/', filelist(1).name)));
h = floor(h/4);
w = floor(w/4);
X = zeros( M, h * w );
for i = 1:M
    X(i, :) = double(reshape(imresize(imread(strcat(imgpath, '/', filelist(i).name)), [h, w]),1,[]))/255;
end

