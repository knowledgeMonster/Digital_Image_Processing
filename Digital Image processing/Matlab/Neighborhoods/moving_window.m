clc; clear; close all
%% This is a simple exmaple of a 3x3 moving window on an image

I = [1,2,3,4,5,6;
    7,8,9,10,11,12;
    13,14,15,16,17,18;
    19,20,21,22,23,24;
    25,26,27,28,29,30;
    31,32,33,34,35,36];
[m,n] = size(I);


for i = 1:m-2
    for j = 1:n-2
        I(i:i+2,j:j+2)
    end
end

