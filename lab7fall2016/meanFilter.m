function [out_image] = meanFilter(image,kernelSize)
image_lab = rgb2lab(image);
kernel = 1/(kernelSize*kernelSize) * ones(kernelSize,kernelSize);
first = image_lab(:,:,1)
con = conv2(first,kernel,'same');
image_lab(:,:,1) = con;
out_image = lab2rgb(image_lab);
end