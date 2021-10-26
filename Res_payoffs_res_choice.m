function C_Res_r_ch = Res_payoffs_res_choice( L,r,h,Sat_strength,Comp_level)
%Returns the number of copulations a resident r recieves from a co-display 
%whith a satellite after deciding to cooperate or not (C_Res_r_ch) 
%on a lek with L residents under one of four hypothetical scienarios, 
%h (inputs: "Null", "UP", "Sk", "Rsk"). The user can specify the 
%commpetitive ability of a co-displaying satellite, Sat_com_ab ("weak", 
%"medium", or "strong") and the competition intensity 
%between residents, Comp_level ("low" = low competition, "medium" = medium
%competition, "high" = high competition).
    %Note that this parameter is only used in derived calculations of the
    %effects of co-display on the dyad and the lek (i.e. preportion of 
    %copulations within a dyad and resident mating skew). It differs from 
    %the Res_payoff function in that when the resident rewards are negative 
    %the resident rejects the satellite and thus the payyoff from 
    %co-display returned is "nan." 


C_Res_r = Res_payoffs(L,r,h,Sat_strength,Comp_level);
G_Res_r = Res_reward(L,r,h,Sat_strength,Comp_level);
if G_Res_r > 0
    C_Res_r_ch = C_Res_r;
elseif G_Res_r == 0
    C_Res_r_ch = C_Res_r;
elseif G_Res_r < 0
    C_Res_r_ch = nan;
end
    
end


