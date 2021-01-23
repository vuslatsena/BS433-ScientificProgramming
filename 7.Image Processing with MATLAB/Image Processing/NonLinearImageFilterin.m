%% Read Image
im = imread('panda.jpg');
im = rgb2gray(im);
figure; imshow(im);
im = im2double(im);

%% Add Noise to Image
im_noisy = imnoise(im,'salt & pepper'); 
figure; imshow(im_noisy);

%% Median Filter
im_median = medfilt2(im_noisy, [3 3]);
figure; imshow(im_median);

%% Bilateral Filter

im_var = std2(im)^2;
DoS = 2*im_var;
im_bilat = imbilatfilt(im, DoS, 2);
figure; imshow(im_bilat);
figure; imshow(abs(im-im_bilat));