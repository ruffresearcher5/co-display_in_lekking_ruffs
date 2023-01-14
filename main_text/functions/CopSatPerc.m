function Psc = CopSatPerc(L,r,H,Sat_strength,Comp_level)
%The percent of copulations satellite recieve on a lek given a resident
%partner rank, lek size, fitness loss scenario, the competetive ability of
%the satellite, and the competition level between residents.

Ft = Total_cops_on_lek( L );
Gs = Satellite_rewards( L,r,H,Sat_strength,Comp_level );
Psc = round((Gs/Ft) * 100);

end

