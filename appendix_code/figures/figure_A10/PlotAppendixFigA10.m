%%%%%Script for ploting supplementary figure A10%%%%%%

Figure_A10=figure;
    Plot_A_a=plotGr_sens_sat("strong");
    Plot_A_b=plotGr_sens_sat("medium");
    Plot_A_c=plotGr_sens_sat("weak");
    Plot_B_a=plotGs_sens_sat("strong");
    Plot_B_b=plotGs_sens_sat("medium");
    Plot_B_c=plotGs_sens_sat("weak");
    Plot_C_a=plotSatProportion_sens_sat("strong");
    Plot_C_b=plotSatProportion_sens_sat("medium");
    Plot_C_c=plotSatProportion_sens_sat("weak");
    Plot_D_a=plotDeltaSkew_sens_sat("strong");
    Plot_D_b=plotDeltaSkew_sens_sat("medium"); 
    Plot_D_c=plotDeltaSkew_sens_sat("weak"); 
    

    

 %add satellite strength levels
 text(-57.5,3.4,{'Strong'},'Color','black','FontWeight',...
     'bold','FontSize',18)
 text(-57.9,1.95,{'Medium'},'Color','black','FontWeight',...
     'bold','FontSize',18)
 text(-57.5,0.55,{'Weak'},'Color','black','FontWeight',...
     'bold','FontSize',18)
 

 

