%resmimizi okuduk ve im tipinde bir değişken
%olarak kayıt ettik.
im = imread('faculty.jpg');

%image'ı gray'e çevirdi.
img = rgb2gray(im);
figure; imshow(img);

%verilen bir görüntüyü double'a çeviren bir fonksiyon
imD = im2double(im2D);