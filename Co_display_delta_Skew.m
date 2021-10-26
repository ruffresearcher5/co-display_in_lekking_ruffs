function DeltaSkew = Co_display_delta_Skew( L,r,H,Sat_Com_ab,Comp_level)
%This function calculates the change in mating skew among residents when a
%satellite and resident co-display, on a lek size of L residents, when the
%cooperating resident is of an r rank, under one of 4 hypothetical senarios
%H, with a certain degree of satellite ability to obtain copulations from a
%dominant resident, Sat_strength, under a given lek competition level
%Comp_level.
%   The resident mating skew is the proportion of resident copulations on
%   the whole lek that are recieved by the alpha resident. This function
%   examines the change in that mating skew between a lek that does not
%   contain a co-display and one where the satellite is co-displaying with
%   a resident of rank r, on a lek with L residents on that lek and the
%   satellite has a given ability to gain copulations on with a co-display 
%   when resdent competition is a at a given level.
if r == 1

    alphacops=ResCr_Acc_Res( L,r,H,Sat_Com_ab,Comp_level);
else
    alphacops=ResCopOWSat(L,1,H);
end
Scd=alphacops/(TotalCopsonLek( L )-SatGs( L,r,H,Sat_Com_ab,Comp_level ));
Swocd=SkewofLek( L );
DeltaSkew=Scd-Swocd;

end

