%resmimizi okuduk ve im tipinde bir değişken
%olarak kayıt ettik.
im = imread('faculty.jpg');

%flip image left right
imlr = fliplr(im);
figure; imshow(imlr);

%flip image up to down
imud = flipud(im);
figure; imshow(imud);