%WTR1 Additive Gaussian white noise removing.
%   [Z, PSNR] = WTR1(Y, Sigma, X) estimates the noise-free image.
%
%   Parameters include:
%
%   'Y'     - Noisy image, specified as a grayscale or color image.
%
%   'Sigma' - Noise standard deviations, a multi-element vector.
%
%   'X'     - Noise-free image, for calculating PSNR only. Omit the
%             argument if not available.
%
%   Example 1
%   ---------
%       addpath('BM3D');
%       if isempty(gcp('nocreate')); parpool(); end
%       X = double(rgb2gray(imread('onion.png')));
%       sigma = 25;
%       Y = X + sigma * randn(size(X));
%       [Z, PSNR] = WTR1(Y, sigma, X);
%       fprintf('Estimate: PSNR = %.2f dB\n', PSNR);
%
%   Example 2
%   ---------
%       addpath('BM3D');
%       if isempty(gcp('nocreate')); parpool(); end
%       X = double(imread('onion.png'));
%       Sigma = [25 15 35];
%       Y = zeros(size(X));
%       for c = 1 : 3
%           Y(:,:,c) = X(:,:,c) + Sigma(c) * randn(size(X(:,:,c)));
%       end
%       [Z, PSNR] = WTR1(Y, Sigma, X);
%       fprintf('Estimate: PSNR = %.2f dB\n', PSNR);
%
%   References:
%   -----------
%   [1] Y. Wu, L. Fang, and S. Li, "Weighted Tensor Rank-1 Decomposition
%       for Nonlocal Image Denoising," IEEE Transactions on Image
%       Processing, vol. 28, no. 6, pp. 2719-2730, Jun. 2019.
