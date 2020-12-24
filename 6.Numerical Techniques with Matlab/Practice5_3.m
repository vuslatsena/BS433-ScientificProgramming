% Interpolation in a random image

%% Generate a random image
im = rand(10,10);  
figure; subplot(2,2,1);
imshow(im);
title('Original');

%% Interpolation

[m,n]=size(im);
[X,Y] = meshgrid(1:m);
[Xq,Yq] = meshgrid(linspace(1,m,64*m));

im_linear = interp2(X,Y,im,Xq,Yq,'linear');
im_cubic = interp2(X,Y,im,Xq,Yq,'cubic');
im_spline = interp2(X,Y,im,Xq,Yq,'spline');

%% Show images
subplot(2,2,2);
imshow(im_linear);
title('linear interpolant');

subplot(2,2,3);
imshow(im_cubic);
title('Cubic interpolant');

subplot(2,2,4);
imshow(im_spline);
title('Spline interpolant');
