function B = D4_dist(x,y,A)
%% Variables
[a,b] = size(A); % Dimensions of the input matrix
B = zeros(a,b);  % Blank matrix for output
%% Distance Calculation (D4 method "City Block Distance")
for u = 1:a
    for v = 1:b
        B(u,v) = abs(x-u) + abs(y-v); % Formula for the D4 method
    end
end
end