%%%%%Script for ploting supplementary figure B7%%%%%%

Figure_B8=figure;
    Plot_A=plotPercSatCop_Null();
    Plot_B=plotPercSatCop_UP();
    Plot_C=plotPercSatCop_Sk();
    Plot_D=plotPercSatCop_RSk();
    %add color bar
    C_Bticks=[];
    hr1 = colorbar('Ticks',[],'Position',[0.67 0.15 0.02 0.79],...
            'YAxisLocation','right','XTick', C_Bticks);
    hr1.Limits = [0 20];
    text(9.1,3,0,{'Percent satellite lek copulations'},...
            'Color','black','FontSize',18,'Rotation',90)
    set(hr1,'TickDir','out','xticklabel',num2str(get(hr1,'xtick')',...
            '%.1f'))
  %%%Note that to produce the graph from the manuscript the plot edit 
    %should be used to change the colormaps of the subplots. The markers
    %should be changed in the following ways: 1) the marker at index 40
    %should be moved to 23 and the marker at index 17 to index 22. 
    
    %graphing domains realistic copulation percentages
    text(11.3,4.0,0,{'< 10%'},'Color',[0.5 0.5 0.5],'FontSize',20,'Rotation',90)
    text(11.3,-5.2,0,[char(8805) '10%'],...
            'Color',[0.8359 0.2431 0.3098],'FontSize',20,'Rotation',90)