function B = Skew_of_lek( L )
%Returns the mating skew (B) among residents on a lek with L residents.
%   See appendix B, subsection Resident mating skew for formulation. 
%   See table 1, element 5 and methods in main text for full description.


B = round(2.06-exp(0.0566548*L),2);

end


