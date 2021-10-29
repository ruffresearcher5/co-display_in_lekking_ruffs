%%%%%Script for ploting supplementary figure B6%%%%%%

Figure_B6=figure;
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

    

   
