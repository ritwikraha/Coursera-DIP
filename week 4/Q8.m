imfinfo('frame_1.jpg')

frame_1=imread('frame_1.jpg');

figure(1)

imshow(frame_1)

title('frame 1')

I_1=im2double(frame_1);

frame_2=imread('frame_2.jpg');

figure(2)

imshow(frame_2)

title('frame 2')

I_2=im2double(frame_2);

Block = I_2(65:96,81:112);

size_Block=size(Block)

initial=I_1(1:32,1:32);

initial_MAE=sum(sum(abs(initial-Block)))/(size_Block(1)*size_Block(2));

for i=1:255;

for j=1:321;

I1_sample=I_1(i:i+31,j:j+31);%advancing the position by the chosen window 

MAE=sum(sum(abs(I1_sample-Block)))/(32*32);

if MAE < initial_MAE

initial_MAE=MAE;

x=i

y=j

min_MAE=MAE

else

continue

end

end

end

