clear; clc; close all;
%% Problem 2.4 
A_24 = zeros(20,20);                  % Blank matrix
px = 9; % Calculate distance from coordinate 2,2
py = 8;
A_distEu = Cacl_D(px,py,A_24,'Eu');   % Distance using the Euclidean method
A_distD4 = Cacl_D(px,py,A_24,'D4');   % Distance using the D4 "City Block" method
A_distD8 = Cacl_D(px,py,A_24,'D8');   % Distance using the D8 "Chessboard" method
% Display matrices
disp('Euclidean Method');
disp(A_distEu);
disp('D4 "City Block" method'); 
disp(A_distD4);
disp('D8 "Chessboard" method');
disp(A_distD8);

% Display matrices as images
figure
subplot(3,1,1)
imagesc(A_distEu ); colorbar; title('Euclidean Method');
subplot(3,1,2)
imagesc(A_distD4); colorbar; title('D4 "City Block" method');
subplot(3,1,3)
imagesc(A_distD8); colorbar; title('D8 "Chessboard" method');
truesize([130 130]);