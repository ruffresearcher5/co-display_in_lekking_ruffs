function  C_Res_r  = Res_payoffs(L,r,h,Sat_strength,Comp_level)
%Returns the number of copulations a resident r recieves when co-displaying 
%whith a satellite (C_Res_r) on a lek with L residents under one of four 
%hypothetical scienarios, h (inputs: "Null", "UP", "Sk", "Rsk"). The user 
%can specify the commpetitive ability of a co-displaying satellite, 
%Sat_com_ab ("weak", "medium", or "strong") and the competition intensity 
%between residents, Comp_level ("low" = low competition, "medium" = medium
%competition, "high" = high competition).
    %For complete description and formulation see methods and table 1,
    %element 16 in the main text and appendix B, subsection Mating skew, 
    %total copulations, monopolization coefficient, and disruption risk 
    %relationships in the supplementary. For satellite competitive ability
    %and resident competition intensity see appendix D.
F_r = Single_res_cops(L,r,h);
F_SatandRes = Co_dis_benefit(L,h);
M_Res_r = Mono_coeff( L,r,Sat_strength,Comp_level); 
C_Res_r = (F_r + F_SatandRes)*M_Res_r;
end


