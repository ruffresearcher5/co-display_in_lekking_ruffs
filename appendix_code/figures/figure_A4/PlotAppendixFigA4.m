%%%%%Script for ploting supplementary figure A4%%%%%%

Figure_A4=figure;
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
