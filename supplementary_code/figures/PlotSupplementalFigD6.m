%%%%%Script for ploting supplementary figure C4%%%%%%

Figure_D6=figure;
    Plot_A_a=plotNull_SatCopPerc_sens("high");
    Plot_A_b=plotNull_SatCopPerc_sens("medium");
    Plot_A_c=plotNull_SatCopPerc_sens("low");
    Plot_B_a=plotUPPercSatCop_sens("high");
    Plot_B_b=plotUPPercSatCop_sens("medium");
    Plot_B_c=plotUPPercSatCop_sens("low");
    Plot_C_a=plotSkPercSatCop_sens("high");
    Plot_C_b=plotSkPercSatCop_sens("medium");
    Plot_C_c=plotSkPercSatCop_sens("low");
    Plot_D_a=plotRSkPercSatCop_sens("high");
    Plot_D_b=plotRSkPercSatCop_sens("medium"); 
    Plot_D_c=plotRSkPercSatCop_sens("low");
    
    %color bar and biologically realistic (satellites with =>10% cops
    C_Bticks=[0 6 10 18 24 30 36];
    hr1 = colorbar('Ticks',[],'Position',...
                    [0.765 0.11 0.02 0.817],...
                    'YAxisLocation','right','XTick', C_Bticks);
    hr1.Limits = [0 36];
    text(9,0,0,{'Percent satellite lek copulations'},...
                        'Color','black','FontSize',18,'Rotation',90)
                    set(hr1,'TickDir','out','xticklabel',...
                        num2str(get(hr1,'xtick')','%.1f'))
    
   arrows_reject=annotation('doublearrow',[.81 .81],[.11 .33]);
   arrows_reject.Color = 'black';
   text(14.5,5.5,0,{'< 10%'},'Color','black','FontSize',20,'Rotation',90)
   arrows_recruits=annotation('doublearrow',[.81 .81],[.34 0.925]);
   arrows_recruits.Color = [0.5 0.2 0.5];
   text(14.5,-9,0,[char(8805) '10%'],...
            'Color',[0.5 0.2 0.5],'FontSize',20,'Rotation',90)
   %%%Note that to produce the graph from the manuscript the plot edit 
    %should be used to change the colormaps of the subplots. The markers
    %should be changed in the following ways: 1) the marker at index 17
    %should be moved to 18; 2) a marker should be added at index 33;
    %3) the marker at index 33 should be moved to index 19. 
    
    
 %add satellite strength levels
 text(-45.8,-18.5,0,{'Strong'},'Color','black','FontWeight',...
     'bold','FontSize',18)
 text(-46,-7.36,0,{'Medium'},'Color','black','FontWeight',...
     'bold','FontSize',18)
 text(-45.5,3.78,0,{'Weak'},'Color','black','FontWeight',...
     'bold','FontSize',18)
    
