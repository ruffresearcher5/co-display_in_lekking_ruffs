function Ar = ResCoProbmm(L,r,H)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
Gr = ResGrmm(L,r,H);
if Gr > 0
    Ar = 1;
elseif Gr == 0
    Ar = 0.5;
elseif Gr < 0
    Ar = 0;
end
end

