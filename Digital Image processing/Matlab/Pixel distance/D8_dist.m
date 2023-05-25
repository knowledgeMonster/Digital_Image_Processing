function B = D8_dist(x,y,A)
%% Variables
[a,b] = size(A); % Dimensions of input matrix 
B = zeros(a,b);
%% Distance Calculation (D8 method "Chessboard Distance")
for u = 1:a    % scan the matrix
    for v = 1:b
        B(u,v) = max([(abs(x-u)),(abs(y-v))]); % formula for the D8 method
    end
end
end