function Rank_Greek = Rank_Num_to_Greek(Rank_numaric )
%RANK_NUM_TO_GREEK Summary of this function goes here
%   Detailed explanation goes here

switch Rank_numaric
    case 1
        Rank_Greek = '\alpha';
    case 2
        Rank_Greek = '\beta';
    case 3
        Rank_Greek = '\gamma';
    case 4
        Rank_Greek = '\delta';
    case 5
        Rank_Greek = '\epsilon';
    case 6
        Rank_Greek = '\zeta';
    case 7
        Rank_Greek = '\eta';
end

end

