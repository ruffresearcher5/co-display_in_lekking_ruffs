function B_Hat = Norm_skew_of_lek( L )
%Returns the normalized resident reproductive skew for a lek size with L 
%residents on it.
%   See methods and table 1, element 6 in the main text for full
%   description and formulation.
B = Skew_of_lek( L );
B_Hat = B/(1-(1-B)^L);

end

