%%%%%Script for ploting supplementary figure C3%%%%%%

Figure_C3=figure;
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
    
%annotate max Gr and Gs
  %Gr
    %max Gr when satellite has high competetion between residents
    annotation('rectangle',[0.1907 0.885 0.012 0.026],'Color','red',...
        'FaceColor','red','LineWidth',1,'FaceAlpha',.5)
    text(-48.7,-22.5,0,{'Max';'\rm(\itr \rm= \alpha, \itL \rm = 3)'},...
            'Color','black','FontWeight','bold','FontSize',12)
    annotation('arrow',[0.1965 0.1965],[.94 .912])
    %max Gr when satellite has medium competetion between residents
    annotation('rectangle',[0.1907 0.585 0.012 0.026],'Color','red',...
        'FaceColor','red','LineWidth',1,'FaceAlpha',.5)
    text(-48.7,-11.36,0,{'Max';'\rm(\itr \rm= \alpha, \itL \rm = 3)'},...
            'Color','black','FontWeight','bold','FontSize',12)
    annotation('arrow',[0.1965 0.1965],[.64 .612])
    %max Gr when satellite has low competetion between residents
    annotation('rectangle',[0.1907 0.286 0.012 0.026],'Color','red',...
        'FaceColor','red','LineWidth',1,'FaceAlpha',.5)
    text(-48.7,-0.3,0,{'Max';'\rm(\itr \rm= \alpha, \itL \rm = 3)'},...
            'Color','black','FontWeight','bold','FontSize',12)
    annotation('arrow',[0.1965 0.1965],[.34 .3121])
    
  %Gs
    %max Gs when satellite has high competetion between residents
    annotation('rectangle',[0.408 0.804 0.012 0.026],'Color','red',...
        'FaceColor','red','LineWidth',1,'FaceAlpha',.5)
    text(-34,-17.85,0,{'Max';'\rm(\itr \rm= \delta, \itL \rm = 4)'},...
            'Color','black','FontWeight','bold','FontSize',12)
    annotation('arrow',[0.39 0.408],[.817 .817])
    %max Gs when satellite has medium competetion between residents
    annotation('rectangle',[0.408 0.504 0.012 0.026],'Color','red',...
        'FaceColor','red','LineWidth',1,'FaceAlpha',.5)
    text(-34,-6.71,0,{'Max';'\rm(\itr \rm= \delta, \itL \rm = 4)'},...
            'Color','black','FontWeight','bold','FontSize',12)
    annotation('arrow',[0.39 0.408],[.517 .517])
    %max Gs when satellite has low competetion between residents
    annotation('rectangle',[0.408 0.2051 0.012 0.026],'Color','red',...
        'FaceColor','red','LineWidth',1,'FaceAlpha',.5)
    text(-34,4.4,0,{'Max';'\rm(\itr \rm= \delta, \itL \rm = 4)'},...
            'Color','black','FontWeight','bold','FontSize',12)
    annotation('arrow',[0.39 0.408],[.218 .218])
 %add resident competetion levels
 text(-58.5,-18.5,0,{'High'},'Color','black','FontWeight',...
     'bold','FontSize',18)
 text(-59.3,-7.36,0,{'Medium'},'Color','black','FontWeight',...
     'bold','FontSize',18)
 text(-58.5,3.78,0,{'Low'},'Color','black','FontWeight',...
     'bold','FontSize',18)
 
 %%%Note that to produce the graph from the manuscript the plot edit 
    %should be used to change the colormaps of the Resident copulation 
    %gain subplots. The markers should be changed in the following ways: 
    %1) move marker at index 17 to the index 2; 2)put a marker at index 24,
    %move it to index 3 delete index 2's marker and move the marker from 
    %index 3 to index 2; 3)change the first index to R = 1, G = 0.44 and B 
    %= 0; 4) place marker at index 41 and move to index 29.
