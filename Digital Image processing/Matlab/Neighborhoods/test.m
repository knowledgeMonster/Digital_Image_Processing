clc; clear; close all

I = [0,0,0,0,0,0,0,0,0,0;
    0,0,1,1,1,1,1,1,0,0;
    0,0,1,1,0,0,1,1,0,0;
    0,0,1,1,0,0,0,0,0,0;
    0,0,1,1,0,0,0,0,0,0;
    0,0,0,0,0,0,0,0,0,0;
    0,0,0,0,1,1,0,0,1,1;
    0,0,0,0,1,1,0,0,1,1;
    0,0,0,0,0,0,0,0,1,1;
    0,0,1,1,1,1,1,1,1,1;];

figure,
imagesc(I);
[m,n] = size(I);

Io = zeros([m,n]);
n_count = 1;
equivalence = dictionary("1", 1);

for i = 1:m-2
    for j = 1:n-2
        window_I = I(i:i+2,j:j+2)
        window_O = Io(i:i+2,j:j+2)
        So = sum(window_O,"all");
        Si = sum(window_I,"all");
        if window_I(2,2) > 0
            if Si > 1
                if So == 0
                    Io(i:i+2,j:j+2) = (window_I * n_count) + window_O;
                    n_count = n_count + 1;
                    equivalence(string(n_count)) =n_count;
                end
                if So > 0
                    mul = unique(Mysort(window_O))
                    b =  size(mul);
                    if mul(1) == 0
                        Io(i:i+2,j:j+2) = (window_I * mul(2)) + zeros(3,3);
                        equivalence(string(mul(b(2)))) = mul(2);
                    else
                        Io(i:i+2,j:j+2) = (window_I * mul(1)) + zeros(3,3);
                        equivalence(string(mul(b(2)))) = mul(1);
                    end
                end
            end
            disp(Io(i:i+2,j:j+2))
        end
    end
end

figure,
imagesc(Io);
colorbar