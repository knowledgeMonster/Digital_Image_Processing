clc; clear; close all

I = imread('cell.tif');

[m,n] = size(I);

M = m*3;
N = n*3;
Io = zeros(M,N);

Affine_matrix = [0.5 0 50;
                 0 1.2 50;
                 0 0 1];

for i = 1:m
    for j = 1:n
        Input_matrix = [i;j;1];
        Output_matrix = Affine_matrix * Input_matrix;
        x = round(Output_matrix(1));
        y = round(Output_matrix(2));
        Io(x,y) = I(i,j);
    end
end

figure
title("Original image")
imshow(I)

figure
title("Transformed image")
imagesc(Io)
colormap('gray')