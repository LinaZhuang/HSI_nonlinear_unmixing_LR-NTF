 function [A_abu, Image_R] = LR_NTF(Y, C, A0, lambda1, lambda2, mu, maxiter, tol)
%LR-NTF: A new nonlinear unmixing method based both on the Low-Rank representation 
%of abundance maps and interaction abundance maps via Nonnegative Tensor Factorization
%
%Input:
 %Y:                   hyperspectral image cube,size:(row,col,band)
 %C:                   endmember matrix,size(band,endNum),range from [0,1]
 %A0:                  abundance matrix,size(endNum,row*col)
 %lambda1:             regularization parameter
 %lambda2:             regularization parameter
 %mu:                  penalty parameter
 %maxiter;             the number of iteractions
 %tol:                 the tolerance for stopping the iterations  
% ---------------------------------------------------------------------
%
% Output:
 %A_abu:               abundance cube, size( row,col,endNum)
 %Image_R:             Reconstructed image cube with LR-NTF method
% ---------------------------------------------------------------------
%  For LR-NTF unmixing method, see more details in the paper:
%
% Lianru Gao, Zhicheng Wang, Lina Zhuang, Haoyang Yu, Bing Zhang, and Jocelyn Chanussot,
% "Using Low-rank Representation of Abundance Maps and Nonnegative Tensor Factorization for Hyperspectral Nonlinear Unmixing",
% TGRS, 2021. DOI: 10.1109/TGRS.2021.3065990
%  
%  URL: https://sites.google.com/view/linazhuang/home
%% -------------------------------------------------------------------------
%
% Copyright (Feb. 2020):
% Authors: Zhicheng Wang (wangzc@radi.ac.cn)
%         &
%         Lina Zhuang (linazhuang@qq.com)
%
%
% LR-NTF is distributed under the terms of
% the GNU General Public License 2.0.
%
% Permission to use, copy, modify, and distribute this software for
% any purpose without fee is hereby granted, provided that this entire
% notice is included in all copies of any software which is or includes
% a copy or modification of this software and in all copies of the
% supporting documentation for such software.
% This software is being provided "as is", without any express or
% implied warranty.  In particular, the authors do not make any
% representation or warranty of any kind concerning the merchantability
% of this software or its fitness for any particular purpose."
% ---------------------------------------------------------------------
%%
 [A_abu, Image_R] = LR_NTF_core(Y, C, A0, lambda1, lambda2, mu, maxiter, tol);
end
    
    
    
   
    
    
    
    
    
    
   