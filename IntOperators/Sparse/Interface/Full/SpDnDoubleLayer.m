% mu-diff - Copyright (C) 2014-2018 X. Antoine and B. Thierry, University of Lorraine, CNRS, France
%
% See the LICENSE.txt file for license information. Please report all
% bugs and problems to either (replace [at] and [dot] by arobase and dot)
%   Xavier.Antoine [at] univ-lorraine [dot] fr
%   BThierry [at] math.cnrs [dot] fr
%
% ~~~
% Compute the matrix of the normal derivative trace of the double-layer 
% integral operator in the Fourier basis.
% SPARSE VERSION
% -------------------------------------------------------------------------
% Normal derivative trace of the double-Layer operator D for a density 
% lambda in H^{1/2}(Gamma) (beware the "minus" sign!)
% for all x in \Gamma :
%   D lambda(x) = - dn_x \int_{Gamma} dn_y G(x,y) lambda(y) dy
%
% n = unit outward normal of the boundary Gamma of Omega, pointing
%     outside Omega
% G(x,y)=i/4*H_0^1(k\|\xx-\yy\|), zeroth order Hankel function of 1st kind
% -------------------------------------------------------------------------
%   A = SpDnDoubleLayer(O, a, M_modes, k)
%
% Output Arguments :
% -----------------
% A : cell(3,1) of the system
%
% Input Arguments (N_scat = length(a) = number of obstacles):
% -----------------
% O       [2 x N_scat] : Vector of the centers of the scatterers
% a       [1 x N_scat] : Vector of the radius of the scatterers
% M_modes [1 x N_Scat] : Vector of the "N_p", where "(2*N_p+1)" is the
%                        number of modes kept for the Fourier basis of the
%                        scatterer number "p".
% k       [1 x 1]      : Wavenumber in the vacuum
%
% See also DnDoubleLayer, SpBlockIntegralOperator, SpIntegralOperator, SpMatVec

%%
function A = SpDnDoubleLayer(O, a, M_modes, k)
    A = SpIntegralOperator(O, a, M_modes, k, 5);
end
