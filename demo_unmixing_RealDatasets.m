%% Name: demo_unmixing_RealDatasets
%
%-----------------------------------------------------------------------
%
%  This demo illustrates the LR_NTF hyperspectral nonlinear unmixing  algorithm
%  operating in a sub-region of Washington DC Mall image.
%
%  Results are given in the paper:
%
% Lianru Gao, Zhicheng Wang, Lina Zhuang, Haoyang Yu, Bing Zhang, and Jocelyn Chanussot,
% "Using Low-rank Representation of Abundance Maps and Nonnegative Tensor Factorization for Hyperspectral Nonlinear Unmixing",
% TGRS, 2021. DOI: 10.1109/TGRS.2021.3065990
%  
%  URL: https://sites.google.com/view/linazhuang/home
%
%
%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Authors: Zhicheng Wang (wangzc@radi.ac.cn)
%         &
%         Lina Zhuang (linazhuang@qq.com)
%         Feb., 2020
%%

clc,clear,close all; 
disp('>>>Strat LR-NTF Unmixing,Please Wait>>>')

%%
%--------------------------------------------------------------------------
%  Load a sub-region of Washington DC Mall image
%--------------------------------------------------------------------------
%  
load SubWashingtonDC2.mat;   % change this to load other real hyperspectral datasets
lambda1 = 0.1;
lambda2 = 0.07;
mu = 1e-4;
iter_max = 1000;
tol = 1e-6;   % 1e-5
%Y: an observed hyperspectral image.
%C: endmember matrix, which is estimated by VCA method.
%A0: inital abundance tensor, which is estimated by FCLS method.
%Abundances_LR_NTF:estimated abundance map cube with LR-NTF method
%Image_reconstructed:Reconstruction of the image cube with LR-NTF method
[Abundances_LR_NTF,Image_reconstructed] = LR_NTF(Y, C, A0, lambda1, lambda2, mu, iter_max, tol);
% show results:
figure;
for iabun = 1:size(Abundances_LR_NTF,3)
    subplot(1,6,iabun);
    imagesc(Abundances_LR_NTF(:,:,iabun));
    title(['Estimated abundance map ',num2str(iabun)]);
end
