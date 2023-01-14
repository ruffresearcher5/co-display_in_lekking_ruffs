function M_Res_r = Mono_coeff( L,r,Sat_com_ab,Comp_level )
%Returns the monopolization coefficient (M_Res_r) of a resident, 
%with a rank of r, on a lek with L residents. The user can specify the 
%commpetitive ability of a co-displaying satellite, Sat_com_ab ("weak", 
%"medium", or "strong") and the competition intensity between residents, 
%Comp_level ("low" = low competition, "medium" = medium competition, 
%"high" = high competition).
    %For complete description and formulation see methods and table 1,
    %element 15 in the main text and appendix B, subsection Mating skew, 
    %total copulations, monopolization coefficient, and disruption risk 
    %relationships in the supplementary. For satellite competitive ability
    %and resident competition intensity see appendix D.

D_r = Dis_risk( L,r,Comp_level );
switch Sat_com_ab
    case "strong"
        M_Res_r=1/(1+exp(-11/((r*L)+D_r)))-0.30;
    case "medium"
        M_Res_r=1/(1+exp(-11/((r*L)+D_r)))-0.15;
    case "weak"
        M_Res_r=1/(1+exp(-11/((r*L)+D_r))); 
end
end



