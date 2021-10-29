function Ps = Satellite_proportion( L,r,h,Sat_strength,Comp_level )
%This is the proportion of copulations a satellite recieves during a 
%co-display.


Ps = Satellite_rewards( L,r,h,Sat_strength,Comp_level )/...
    (Res_payoffs( L,r,h,Sat_strength,Comp_level)+...
    Satellite_rewards( L,r,h,Sat_strength,Comp_level ));

end

