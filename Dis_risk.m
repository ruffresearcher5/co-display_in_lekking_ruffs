function Dr = Dis_risk( L,r,Comp_level )
%Returns the disruption risk (Dr) of a resident with a rank of r, located 
%on a lek with L Residents. The user can specify the competition intensity 
%between residents with the input Comp_level ("low" = low competition, 
%"medium" = medium competition, "high" = high competition).
%   See methods and table 1, element 13, and supplementary material, 
%   appendix D, for detailed formulation. 

switch Comp_level
    case "low"
        Dr = (1/(1 + exp(((14/(L*r))*7))));
    case "medium"
        Dr = 1/(1 + exp(((1/(L*r))*7)));
    case "high"
        Dr = (1/(1 + exp(((1/(L*r)))*7)))+0.5; 
end 
end


