function B = EucliDis(x,y,A)
%% Variables
[a,b] = size(A); % Dimensions of the input matrix
B = zeros(a,b);  % Blank matrix for the output
%% Distance Calculation (Euclidean method)
for u = 1:a      % scan the input matrix
    for v = 1:b
        B(u,v) = round(((x-u)^2 +(y-v)^2)^(1/2),2); % Euclidean formula
    end
end
end