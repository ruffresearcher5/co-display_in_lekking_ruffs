function G_Res_r = Res_reward(L,r,h,Sat_strength,Comp_level)
%Returns the copulation reward a resident r receives when part of a
%co-dispay with a satellite on a lek with L residents, under one
%of the four scienarios, h (inputs: "Null", "UP", "Sk", "Rsk"). The user 
%can specify the commpetitive ability of a co-displaying satellite, 
%Sat_com_ab ("weak", "medium", or "strong") and the competition intensity 
%between residents, Comp_level ("low" = low competition, "medium" = medium
%competition, "high" = high competition).
    %For complete description and formulation see methods and table 1,
    %element 18 in the main text. For satellite competitive ability
    %and resident competition intensity see appendix D.
F_Res_r=Single_res_cops(L,r,h);
C_Res_r=Res_payoffs(L,r,h,Sat_strength,Comp_level);
G_Res_r = C_Res_r - F_Res_r;

end



