%%%%%Script for ploting supplementary figure A11%%%%%%

Figure_A11=figure;
    Plot_A_a=plotGr_sens_lek_comp("high");
    Plot_A_b=plotGr_sens_lek_comp("medium");
    Plot_A_c=plotGr_sens_lek_comp("low");
    Plot_B_a=PlotGs_sens_lek_comp("high");
    Plot_B_b=PlotGs_sens_lek_comp("medium");
    Plot_B_c=PlotGs_sens_lek_comp("low");
    Plot_C_a=plotSatProportion_sens_lek_comp("high");
    Plot_C_b=plotSatProportion_sens_lek_comp("medium");
    Plot_C_c=plotSatProportion_sens_lek_comp("low");
    Plot_D_a=plotDeltaSkew_sens_lek_comp("high");
    Plot_D_b=plotDeltaSkew_sens_lek_comp("medium"); 
    Plot_D_c=plotDeltaSkew_sens_lek_comp("low"); 

 %add competitive levels
 text(-57.5,3.4,{'High'},'Color','black','FontWeight',...
     'bold','FontSize',18)
 text(-57.9,1.95,{'Medium'},'Color','black','FontWeight',...
     'bold','FontSize',18)
 text(-57.5,0.55,{'Low'},'Color','black','FontWeight',...
     'bold','FontSize',18)
