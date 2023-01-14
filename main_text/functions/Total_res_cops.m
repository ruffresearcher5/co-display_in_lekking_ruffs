function F_Res_total = Total_res_cops( L,h )
%Returns the grand total of resident single display copulations, F_r, on a 
%lek where a co-display occurs on a lek with L residents under one of the 
%four hypothetical scenarios, h ("Null", "UP", "Sk", "RSk").
%   Note that this function does not appear in the main text or in the
%   supplemental material. However, it simply reduces complexity in the
%   computation process. This function is fully consistent with the
%   formulation of F_SatandRes in table 1, element 11, in the main text and 
%   is derived from that function.

B=Skew_of_lek(L);
F_Lek = Total_cops_on_lek( L );
frt=zeros(1,L);
B_Hat=Norm_skew_of_lek( L );
switch h
    case "Null"
        for r = 1:L    
            s = (F_Lek * (((1 - B)^(r-1))*B_Hat));
            frt(1,r)=s;
            F_Res_total=sum(frt);
        end
    case "UP"
        for r = 1:L
            F_Res_r=(F_Lek * (((1 - B)^(r-1))*B_Hat));
            s = F_Res_r - ((B/L)*F_Res_r);
            frt(1,r)=s;
            F_Res_total=sum(frt);
        end
    case "Sk"
        for r = 1:L
            F_Res_r=(F_Lek * (((1 - B)^(r-1))*B_Hat));
            s = F_Res_r - ((B^2)* (((1 - B)^(r-1)))*F_Res_r);
            frt(1,r)=s;
            F_Res_total=sum(frt);
        end
    case "RSk" 
        for r = 1:L
            F_Res_r=(F_Lek * (((1 - B)^(r-1))*B));
            s = F_Res_r - ((B^2)* (((1 - B)^(L-r)))*F_Res_r);
            frt(1,r)=s;
            F_Res_total=sum(frt);
        end
end
 
end




 
