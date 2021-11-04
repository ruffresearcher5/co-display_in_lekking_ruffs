function FSatandRes = Co_dis_benefit(L,h)
%Returns the co-display benefit of a co-display between a satellite and 
%a resident of rank r on a lek with L residents under one of four
%and hypothetical scenarios, h ("Null", "UP", "Sk", "RSk").
%   Note that this function along with R_Res_total are derived from the 
%   formulation in table 1, element 11, in the main text. This derivation
%   reduces the complexity in computation however the formulation in the 
%   main text is more intuitive.

F_Lek = Total_cops_on_lek( L );
F_Res_total= Total_res_cops( L,h );
FSatandRes = round(F_Lek - F_Res_total,4);
end

