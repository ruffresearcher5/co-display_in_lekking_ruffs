%%%%%Script for ploting supplementary figure A2. Resident copulations 
%during solo display%%%

Figure_B3=figure;
    Plot_A=plotResCopWOSat_Null();
    Plot_B=plotResCopWOSat_UP();
    Plot_C=plotResCopWOSat_Sk();
    Plot_D=plotResCopsWOSat_RSk();

    C_Bticks=[0.0 2.0 4.0 6.0 8.0];
    hr1 = colorbar('Ticks',[],'Position',[0.67 0.15 0.02 0.79],...
            'YAxisLocation','right','XTick', C_Bticks);
        hr1.Limits = [0.0 8.0];
    text(9.1,3.5,0,{'Resident copulations for single display'},...
            'Color','black','FontSize',18,'Rotation',90)
        set(hr1,'TickDir','out','xticklabel',num2str(get(hr1,'xtick')',...
            '%.2f'))
 
