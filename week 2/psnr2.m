I=imread('girl.gif');
I2 = im2double(I);
lp = ones(5,5)/25;
If=imfilter(I2,lp,'replicate');
psnrc = psnr(If, I2);
fprintf('\n The Peak-SNR value is %0.4f', psnrc);