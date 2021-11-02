%%%%%Script for ploting supplementary figure D6%%%%%%

Figure_D6=figure;
    Plot_A_a=plotNull_SatCopPerc_sens("strong");
    Plot_A_b=plotNull_SatCopPerc_sens("medium");
    Plot_A_c=plotNull_SatCopPerc_sens("weak");
    Plot_B_a=plotUPPercSatCop_sens("strong");
    Plot_B_b=plotUPPercSatCop_sens("medium");
    Plot_B_c=plotUPPercSatCop_sens("weak");
    Plot_C_a=plotSkPercSatCop_sens("strong");
    Plot_C_b=plotSkPercSatCop_sens("medium");
    Plot_C_c=plotSkPercSatCop_sens("weak");
    Plot_D_a=plotRSkPercSatCop_sens("strong");
    Plot_D_b=plotRSkPercSatCop_sens("medium"); 
    Plot_D_c=plotRSkPercSatCop_sens("weak");
    
    %color bar and biologically realistic (satellites with =>10% cops
    C_Bticks=[];
    hr1 = colorbar('Ticks',[],'Position',...
                    [0.765 0.11 0.02 0.817],...
                    'YAxisLocation','right','XTick', C_Bticks);
    hr1.Limits = [0 20];
    text(9,0,0,{'Percent satellite lek copulations'},...
                        'Color','black','FontSize',18,'Rotation',90)
                    set(hr1,'TickDir','out','xticklabel',...
                        num2str(get(hr1,'xtick')','%.1f'))
    
   text(12.5,1.5,0,{'< 10%'},'Color',[0.5 0.5 0.5],'FontSize',20,'Rotation',90)
   text(12.5,-13,0,[char(8805) '10%'],...
            'Color',[0.8359 0.2431 0.3098],'FontSize',20,'Rotation',90)
   %%%Note that to produce the graph from the manuscript the plot edit 
    %should be used to change the colormaps of the subplots. The color map
    %has two colors gray (##a6a6a6) and red (#D53E4F). For all subplots change
    %color indicies. Make sure limits are 0 and 20 and then set the
    %indicies 32 and 64 to the red color above and 1 and 31 to the gray color. 
    %Remove all color markers but those that you set on 31 and 32.
    
    
 %add satellite strength levels
 text(-45.8,-18.5,0,{'Strong'},'Color','black','FontWeight',...
     'bold','FontSize',18)
 text(-46,-7.36,0,{'Medium'},'Color','black','FontWeight',...
     'bold','FontSize',18)
 text(-45.5,3.78,0,{'Weak'},'Color','black','FontWeight',...
     'bold','FontSize',18)
