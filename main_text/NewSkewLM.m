function Sd = NewSkewLM( L,r,h, Sat_strength,Comp_level)
%NEWSKEW Summary of this function goes here
%   Detailed explanation goes here
if r == 1

    alphacops=Res_payoffs( L,r,h,Sat_strength,Comp_level);
else
    alphacops=Single_res_cops(L,1,h);
end
Sd=alphacops/(Total_cops_on_lek( L )-Satellite_payoffs( L,r,h,Sat_strength,Comp_level ));


end

