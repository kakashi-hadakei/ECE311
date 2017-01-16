function [out_image] = gaussianFilter(image,kernelSize,std)
image_lab = rgb2lab(image)
kernel = fspecial('gaussian',kernelSize,std)
first = image_lab(:,:,1)
con = conv2(first,kernel,'same');
image_lab(:,:,1) = con;
out_image = lab2rgb(image_lab);
end