function ITQparam = trainITQ(X, ITQparam)

% Input:
%          X: n*d, n is the number of images
%          ITQparam:
%                           ITQparam.pcaW---PCA of all the database
%                           ITQparam.nbits---encoding length
% Output:
%             ITQparam:
%                              ITQparam.pcaW---PCA of all the database
%                              ITQparam.nbits---encoding length
%                              ITQparam.r---ITQ rotation projection

if (isfield(ITQparam, 'pcaW') == 1)
    V = X*ITQparam.pcaW; % projection data
else
    V = X;
end
nbits = ITQparam.nbits;
 
% initialize with a orthogonal random rotation
R = randn(nbits, nbits);
[U11 S2 V2] = svd(R);
R = U11(:, 1: nbits);

% ITQ to find optimal rotation
for iter = 0:100
    Z = V * R; 
    UX = ones(size(Z,1),size(Z,2)).*-1;  
    UX(Z>=0) = 1; 
    C = UX' * V;
    [UB, sigma, UA] = svd(C);    
    R = UA * UB';
%     fprintf('ITQ: iteration %d has finished\r',iter);
end

% make B binary
%B = UX;
%B(B<0) = 0;

ITQparam.r = R;

% fprintf('ITQ training process has finished\r');