function D = Cacl_D(x,y,A,method)
% %% Problem 2.4 
% A_24 = zeros(5,5);                  % Blank matrix
% px = 2; % Calculate distance from coordinate 2,2
% py = 2;
% A_distEu = Cacl_D(px,py,A_24,'Eu');   % Distance using the Euclidean method
% A_distD4 = Cacl_D(px,py,A_24,'D4');   % Distance using the D4 "City Block" method
% % Display matrices
% disp('Euclidean Method');
% disp(A_distEu);
% disp('D4 "City Block" method'); 
% disp(A_distD4); 
% figure
% subplot(2,1,1)
% imagesc(A_distEu ); colorbar; title('Euclidean Method');
% subplot(2,1,2)
% imagesc(A_distD4); colorbar; title('D4 "City Block" method');


try
    if strcmpi(method,'Eu')     % calls for the Euclidean method
        B = EucliDis(x,y,A);
        D = B;
    elseif strcmpi(method,'D4') % calls for the D4 method
        B = D4_dist(x,y,A);
        D = B;
    elseif strcmpi(method,'D8') % calls for the D8 method
        B = D8_dist(x,y,A);
        D = B;
    end
catch
    disp('Invalid method in function myInterp2')
end