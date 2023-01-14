function F_Lek = Total_cops_on_lek( L )
%Returns the total male copulations (including both residents and 
%the satellite) on a lek with L residents and one satellite.
%   See appendix B in supplemental material for formulation of this 
%   function. See table 1, element 4 and methods in main text for 
%   full description.

F_Lek = (-0.00008 + ((0.02066)/((1+exp(-1.842*((L+1) - 3.290))))))*444;
end 

