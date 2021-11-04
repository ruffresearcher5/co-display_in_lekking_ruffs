function G_Sat_r = Satellite_rewards( L,r,h,Sat_strength,Comp_level )
%Returns the copulation reward a satellite receives when part of a
%co-dispay with resident r on a lek with L residents, under one
%of the four scienarios, h (inputs: "Null", "UP", "Sk", "Rsk"). The user 
%can specify the commpetitive ability of a co-displaying satellite, 
%Sat_com_ab ("weak", "medium", or "strong") and the competition intensity 
%between residents, Comp_level ("low" = low competition, "medium" = medium
%competition, "high" = high competition).
    %For complete description and formulation see methods and table 1,
    %element 19 in the main text. For satellite competitive ability
    %and resident competition intensity see appendix D.


C_Sat_r = Satellite_payoffs(L,r,h,Sat_strength,Comp_level);
G_Res_r = Res_reward(L,r,h,Sat_strength,Comp_level);
if G_Res_r > 0
    G_Sat_r = C_Sat_r;
elseif G_Res_r == 0
    G_Sat_r = C_Sat_r;
elseif G_Res_r < 0
    G_Sat_r = nan;
end
    
end

