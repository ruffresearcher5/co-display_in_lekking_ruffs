%%%%%Script for ploting supplementary figure A7%%%%%%

Figure_A7=figure;
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
