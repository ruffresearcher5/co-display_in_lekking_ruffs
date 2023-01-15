function [cops, r ] = Find_max_per_lek(L, response_matrix)
%function provides the per L lek size maximum outputs from the model and 
%there respective variable resident ranks. Values run from lek 
%sizes in the dimensions of the response matrix.

[ cops_in_lek, r_in_lek ] = max(response_matrix);
    r=r_in_lek(L);
    cops=cops_in_lek(L);
end

