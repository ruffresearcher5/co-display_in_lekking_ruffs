%%%%%Script for ploting supplementary figure B5%%%%%%

Figure_B5=figure;
    Plot_A=plotSatGs_Null();
    Plot_B=plotSatGs_UP();
    Plot_C=plotSatGs_Sk();
    Plot_D=plotSatGs_RSk();
    %add color bar
    C_Bticks=[0.0 1.00 2.00 3.00 4.00];
    hr1 = colorbar('Ticks',[],'Position',[0.67 0.15 0.02 0.79],...
            'YAxisLocation','right','XTick', C_Bticks);
    hr1.Limits = [0.0 4.00];
    text(9.1,3.6,0,{'Satellite co-display copulation reward'},...
            'Color','black','FontSize',18,'Rotation',90)
    set(hr1,'TickDir','out','xticklabel',num2str(get(hr1,'xtick')',...
            '%.2f'))

   %%%Note that to produce the graph from the presented in the supplementary
    %the plot edit should be used to change the colormaps of the subplots.
    %The subplots should be changed by eliminating the
    %markers at all the indicies with the colormap editor then placing
    %markers at the follwing locations with the given colors: 
    
    
    %%%%satellite reward subplots colormaps: Index 1 --> white,
    %Index 4 --> #ffebed, Index 16 --> #ffccd1, Index 32 --> #bf8282,
    %Index 40 --> #d63d4f, Index 48 --> #960024, Index 56 --> #78000f, 
    %Index 64 --> #1c0000  

   
