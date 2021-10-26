%%%%%Script for ploting supplementary figure 2%%%%%%
Figure_2=figure;
    Plot_A=plotResGr_main_text();
    Plot_B=plotSatGs_main_text();
    Plot_C=plotSatProportion_main_text();
    Plot_D=PlotSkewMeanSat( );
%annotations for max Gr and Gs
    %max Gr
    text(1.0,-1,{'Max\rm(\itr \rm= \alpha, \itL \rm = 3)'},...
           'Color','black','FontWeight','bold','FontSize',12)
    %annotation('arrow',[0.3231 0.3231],[.945 .905])
    %max Gs
    %annotation('rectangle',[0.6269 0.7345 0.02 0.04],'Color','red',...
       % 'FaceColor','red','FaceAlpha',.3)
    %text(1.1,-6.72,0,{'Max';'\rm(\itr \rm= \delta, \itL \rm = 4)'},...
            %'Color','black','FontWeight','bold','FontSize',12)
    %annotation('arrow',[0.605 0.6268],[0.754 0.754])
    
  %%%Note that to produce the graph from the manuscript the plot edit 
    %should be used to change the colormaps of the Resident copulation 
    %gain subplots. The markers should be changed in the following ways: 
    %1) put a marker at index 25,; 2) remove marker at index 17;
    %move index 25 it to index 2; 3)change the first index to 
    %R = 1, G = 0.7 and B = 0;
