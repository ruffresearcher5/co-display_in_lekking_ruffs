%%%%%Script for ploting supplementary figure B5%%%%%%

Figure_B5=figure;
    Plot_A=plotResGr_Null();
    Plot_B=plotResGr_UP();
    Plot_C=plotResGr_Sk();
    Plot_D=plotResGr_RSk();
    %add color bar
    C_Bticks=[-2.0 0.0 2.0 4.0];
    hr1 = colorbar('Ticks',[],'Position',[0.67 0.15 0.02 0.79],...
            'YAxisLocation','right','XTick', C_Bticks);
        hr1.Limits = [-2.0 4.0];
    text(9.1,3.6,0,{'Resident co-display copulation reward'},...
            'Color','black','FontSize',18,'Rotation',90)
        set(hr1,'TickDir','out','xticklabel',num2str(get(hr1,'xtick')',...
            '%.2f'))
    %%%Note that to produce the graph from the manuscript the plot edit 
    %should be used to change the colormaps of the subplots. The markers
    %should be changed in the following ways: 1) a marker should be added
    %to index 9; 2)the marker at index 17 should be deleted; 3) the marker 
    %at inde9 should be moved to index 21; 4)a marker should be added to 
    %index 30 then moved to index 22. This must be done to each subplot. 
    
    %graphing domains of acceptance by residents
    arrows_reject=annotation('doublearrow',[.73 .73],[.155 .39]);
    arrows_reject.Color = 'red';
    text(13.5,6.5,0,{'Rejects'},...
            'Color','red','FontSize',20,'Rotation',90)
    arrows_recruits=annotation('doublearrow',[.73 .73],[.43 .936]);
    arrows_recruits.Color = 'blue';
    text(13.5,-3,0,{'Recruits'},...
            'Color','blue','FontSize',20,'Rotation',90)
    arrows_ambivalence=annotation('arrow',[.75 .73],[.41 .41]);
    arrows_ambivalence.Color = 'black';
    text(13.5,1.5,0,{'Ambivalent'},...
            'Color','black','FontSize',16)
