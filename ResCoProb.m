function Ar = ResCoProb(L,r,H,Sat_strength,Comp_level)
%Resident decision to cooperate with a satellite. L is the
%number residents of the possible co-display, r is the rank of the resident
%H is the hypothetical scienario of how copulations are drawn away from
%residents on a lek to the co-display, Sat_strength is the ability of the
%satellite to obtain copulations independently of which resident he chooses
%to co-display with, and Comp_level is the level of competition between
%residents on the lek.
%   Resident decision to cooperate, 1 = recruit co-display partner; 0.5 =
%   ambivalent to co-display, 0 = rejection of co-display. These decisions
%   are based on the total gain in copulations a resident recieves in a
%   co-display in comparision to what he would gain when alone. The
%   copulation gains depend on the number of residents on the lek the
%   potential co-display would occur, L, the rank of the resident, r, 
%   the dyad's ability to attract females, H, the satellite's ability to
%   obtain copulations inside the dyad, Sat_strength, and the competition
%   level betweeen residents on the lek.
Gr = ResGr(L,r,H,Sat_strength,Comp_level);
if Gr > 0
    Ar = 1;
elseif Gr == 0
    Ar = 0.5;
elseif Gr < 0
    Ar = 0;
end
end

