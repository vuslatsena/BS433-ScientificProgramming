%% Read Image
im_color = imread('boxes.png');
figure; imshow(im_color);

%% Convert to grayscale
im_gray = rgb2gray(im_color);
im_gray = im2double(im_gray);
figure; imshow(im_gray);

%% Thresholding
th = graythresh(im_gray);
im_bin = im_gray > th;
%im_bin = imbinarize(im_gray);
figure; imshow(im_bin);

%% Opening
se = strel('diamond',5);
im_open = imopen(im_bin, se);
figure; imshow(im_open);

%% Closing
se = strel('diamond',5);
im_close = imclose(im_bin, se);
figure; imshow(im_close);


