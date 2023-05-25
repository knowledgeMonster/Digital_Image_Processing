function A = Mysort(B)
%% Variables
v = 1;  % Starting index for output vector
[m,n] = size(B); % dimensions of input matrix
A = zeros(1,(m*n)); % 1-D vector
%% Sorting algorith (bubble sort)
% this first part is to turn the 2d vector into a 1D vector
for i = 1:m  % The two outer loops scan the matrix
    for j = 1:n
        A(v) = B(i,j); % We assign the values from the matrix to the vector 
        v = v+1;       % next element in the vector
    end
end
% We sort the 1D vector using bubble sort
for i = 1:(m*n)
    for j = 1:(m*n-i)
        if(A(j) > A(j+1))
            var1 = A(j+1);
            A(j+1) = A(j);
            A(j) = var1;
        end
    end
end
end