function [sharpened] = unsharpMask(original,lowpass,alpha)
ori_L = rgb2lab(original);
low_L = rgb2lab(lowpass);
lab_sharp = ori_L;
lab_sharp(:,:,1) = ori_L(:,:,1) - alpha*(ori_L(:,:,1)-low_L(:,:,1));
sharpened = lab2rgb(lab_sharp);

end