clear
%1.3.1
bild = imread('Farbbild.jpeg');

%1.3.2
figure
imshow(bild)

%1.3.3
[r,g,b] = imsplit(bild);

figure
%mon = montage({r,g,b}, 'Size',[1 3]);
imshow(r)

%1.3.4
red = zeros(256,1);
green = (0:1/255:1).';
blue = zeros(256,1);
map = [red,green,blue];

%Stellen Sie den Gruenkanal des Farbbildes mit der erzeugten Farbtabelle dar.
figure, imshow(bild,map);

[I2,map] = rgb2ind(I,256);
figure, imshow(I2,map);