clc;
clear all;
close all;
lena = imread('tire.tif');
%lena = double(lena);
imshow(lena);
title('Original Image');
Iout = zeros(size(lena));
a = [0, 20, 25, 30, 40, 50];
b = [255, 255, 200, 240, 230, 250];
c = min(min(lena));
d = max(max(lena));
figure;
for k=1:6
    for i=1:size(lena,1)
        for j=1:size(lena,2)
            Iout(i,j) = (double(lena(i,j))-c) * ((b(k)-a(k))/(d-c)) + a(k);
        end
    end
    subplot(2,3,k);
    imshow(uint8(Iout));
    title(sprintf('a = %d, b = %d', a(k), b(k)));
end

lena = imread('pout.tif');
figure;
imshow(lena);
title('Original Image');
figure;
for k=1:6
    for i=1:size(lena,1)
        for j=1:size(lena,2)
            Iout(i,j) = (double(lena(i,j))-c) * ((b(k)-a(k))/(d-c)) + a(k);
        end
    end
    subplot(2,3,k);
    imshow(uint8(Iout));
    title(sprintf('a = %d, b = %d', a(k), b(k)));
end
