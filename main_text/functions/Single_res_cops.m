function F_Res_r = Single_res_cops(L,r,h)
%Returns the resident fitness when displaying alone (F_Res_r) and 
%a co-display occurs on another court on a lek with L residents 
% and one satellite under one of our four fitness loss, scenarios, 
%h (input values of "Null", "UP", "Sk", "Rsk").
%   See supplementary material, appendix B, subsection, fitness loss 
%   assessment for detailed formulation and description. Fitness loss 
%   scenario "Sk" is the scenario presented in the main text methods and 
%   elements 8 and 9 in table 1.

B=Skew_of_lek(L);
B_Hat=Norm_skew_of_lek( L );
F_Lek = Total_cops_on_lek( L );
Kr = F_Lek * (((1 - B)^(r-1))*B_Hat);

switch h
    case "Null"
        F_Res_r = Kr;
    case "UP"
        F_Res_r = Kr - ((B/L)*Kr);
    case "Sk"
        F_Res_r = Kr - ((B^2)* (((1 - B)^(r-1)))*Kr);
    case "RSk"
        F_Res_r = Kr - ((B^2)* (((1 - B)^(L-r)))*Kr);
end
end

 
