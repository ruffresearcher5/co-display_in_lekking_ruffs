function Sd = NewSkewLM( L,r,h, Sat_strength,Comp_level)
%function provides the resident reproductive skew when a satellite
%co-displays with a resident of r rank on a lek with L residents under one
%of the four fitness loss scenarios h when the satellite has a competitive
%ability Sat_strength and competition between residents is Comp_level.

if r == 1

    alphacops=Res_payoffs( L,r,h,Sat_strength,Comp_level);
else
    alphacops=Single_res_cops(L,1,h);
end
Sd=alphacops/(Total_cops_on_lek( L )-Satellite_payoffs( L,r,h,Sat_strength,Comp_level ));


end

