%resmimizi okuduk ve im tipinde bir değişken
%olarak kayıt ettik.
im = imread('faculty.jpg');

%Kırmızı bandını ayrı kayıt ettik
imR= im(:,:,1);
figure; imshow(imR);

%Bütün görüntüyü renkli göstermek istersek
figure; imshow(im);
figure; imshow(im(:,:,1));

%Yeşil bandını ayrı kayıt ettik
%imG= im(:,:,2);
%figure;imshow(imG);
figure; imshow(im(:,:,2));

%Mavi bandını ayrı kayıt ettik
%imB= im(:,:,3);
%figure;imshow(imB);
figure; imshow(im(:,:,3));

imtool(im)

%Görüntü üzerinde işlem yaptık ve kayıt edeceğiz.
imwrite(im,'faculty.bmp');