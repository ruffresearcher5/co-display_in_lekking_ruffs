function Mr_vec=getAllMonoCoeffwithVariableDr()
%generate vector of all possible disruption risk values
Mr_vec=zeros(1,147);%empty vector
    function Mr_sub_vec = getAllMonoCoeffwithVariableDr_high(sub)%function 
        %for getting all Mr for a specific competitive context
        leks=1:7;
        ranks=1:7;
        all_combos_sub=combvec(leks,ranks);
        total_length=length(leks)*length(ranks);
        Mr_sub_vec=zeros(1,total_length);
        %for loop for each value of 
        for i = 1:total_length
                Mr_sub=Mono_Coeff(all_combos_sub(1,i)...
                    ,all_combos_sub(2,i),"medium",sub);
                Mr_sub_vec(1,i)=Mr_sub;
        end
        
    end

Mr_vec(1,1:49)=getAllMonoCoeffwithVariableDr_high("low");
Mr_vec(1,50:98)=getAllMonoCoeffwithVariableDr_high("medium");
Mr_vec(1,99:147)=getAllMonoCoeffwithVariableDr_high("high");


end


