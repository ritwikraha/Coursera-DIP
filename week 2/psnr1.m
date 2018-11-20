I=imread('girl.gif');
I2 = im2double(I);
lp = ones(3,3)/9;
If=imfilter(I2,lp,'replicate');
psnrc = psnr(If, I2);
fprintf('\n The Peak-SNR value is %0.4f', psnrc);