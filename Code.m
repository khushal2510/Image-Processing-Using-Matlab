a = imread('C:\MathWorks_MATLAB_R2021a_v9.10.0.1602886\New folder\bin\leaf.jpg');
subplot(2,3,1);
imshow(a);
title('Original Image')

b = rgb2gray(a);
subplot(2,3,2);
imshow(b);
title('Grayscale Image')

c = im2bw(a);
subplot(2,3,3);
imshow(c);
title('Binary Image')

d = imadjust(b);
subplot(2,3,4);
imshow(d);
title('Complement Image')

e = a;
e=rgb2gray(e);
subplot(2,3,5);
imhist(e);
title('Histogram')

imfinfo('C:\MathWorks_MATLAB_R2021a_v9.10.0.1602886\New folder\bin\leaf.jpg')

[height, width, colour_planes] = size(a)

%colormap('spring')