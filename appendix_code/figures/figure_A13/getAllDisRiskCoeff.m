function Dr_vec=getAllDisRiskCoeff()
%generate vector of all possible disruption risk values
Dr_vec=zeros(1,147);%empty vector
    function Dr_sub_vec = getAllDisRisk_high(sub)%function for getting all
        %Dr for a specific competitive context
        leks=1:7;
        ranks=1:7;
        all_combos_sub=combvec(leks,ranks);
        total_length=length(leks)*length(ranks);
        Dr_sub_vec=zeros(1,total_length);
        %for loop for each value of 
        for i = 1:total_length
                Dr_sub=Dis_risk(all_combos_sub(1,i)...
                    ,all_combos_sub(2,i),sub);
                Dr_sub_vec(1,i)=Dr_sub;
        end
        
    end

Dr_vec(1,1:49)=getAllDisRisk_high("low");
Dr_vec(1,50:98)=getAllDisRisk_high("medium");
Dr_vec(1,99:147)=getAllDisRisk_high("high");


end


