function C_Sat_r = Satellite_payoffs(L,r,h,M_Sat,Comp_level)
%Returns the copulations a satellite co-displaying with a resident 
%with r rank recieves (C_Sat_r) on a lek size with L residents under 
%one of four hypothetical scenarios, h(inputs: "Null", "UP", "Sk", "Rsk"). 
%The user can specify the commpetitive ability of a co-displaying 
%satellite, Sat_com_ab ("weak", "medium", or "strong") and the competition 
%intensity between residents, Comp_level ("low" = low competition, 
%"medium" = medium competition, "high" = high competition).
    %For complete description and formulation see methods and table 1,
    %element 17 in the main text and appendix B, subsection Mating skew, 
    %total copulations, monopolization coefficient, and disruption risk 
    %relationships in the supplementary. For satellite competitive ability
    %and resident competition intensity see appendix D.

F_r=Single_res_cops(L,r,h);
F_SatandRes=Co_dis_benefit(L,h);
M_Res_r=Mono_coeff(L,r,M_Sat,Comp_level );
C_Sat_r = (F_r + F_SatandRes)*(1-M_Res_r);
end

