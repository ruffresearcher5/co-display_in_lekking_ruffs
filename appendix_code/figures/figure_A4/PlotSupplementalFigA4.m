%%%%%Script for ploting supplementary figure B4%%%%%%

Figure_B4=figure;
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

 
 %%%Note that to produce the graph from the presented in the supplementary
    %the plot edit should be used to change the colormaps of the subplots.
    %The subplots should be changed by eliminating the
    %markers at all the indicies with the colormap editor then placing
    %markers at the follwing locations with the given colors: 
    
    %%%%resident reward subplot colormaps: Index 1 --> #808080, 
    %Index 19 --> #d4d4d4, Index 22 --> white, Index 26 --> #d9faff, 
    %Index 33 --> #adf5ff, Index 44 --> #73bdf5, Index 49 --> #2487bd, 
    %Index  54 --> #0070a3, Index 59 --> #00406e, Index 64 --> #000326 
    
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
