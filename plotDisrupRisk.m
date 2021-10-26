function DrPlot = plotDisrupRisk()
%%%%%Subplot function for supplementary figure B2_C%%%%%
%Plot of assumed function for resident disruption risk. 
Comp_level="medium";
%Preduction matrix
MatRisk(1:7,1)=[Dis_risk(1,1,Comp_level),nan,nan,nan,nan,nan,nan];
%L=2
MatRisk(1:7,2)=[Dis_risk(2,1,Comp_level),...
    Dis_risk(2,2,Comp_level),nan,nan,nan,nan,nan];
%L=3
MatRisk(1:7,3)=[Dis_risk(3,1,Comp_level),...
    Dis_risk(3,2,Comp_level),Dis_risk(3,3,Comp_level),...
    nan,nan,nan,nan];
%L=4
MatRisk(1:7,4)=[Dis_risk(4,1,Comp_level),...
    Dis_risk(4,2,Comp_level),Dis_risk(4,3,Comp_level),...
    Dis_risk(4,4,Comp_level),nan,nan,nan];
%L=5
MatRisk(1:7,5)=[Dis_risk(5,1,Comp_level),...
    Dis_risk(5,2,Comp_level),Dis_risk(5,3,Comp_level),...
    Dis_risk(5,4,Comp_level),...
    Dis_risk(5,5,Comp_level),nan,nan];
%L=6
MatRisk(1:7,6)=[Dis_risk(6,1,Comp_level),...
    Dis_risk(6,2,Comp_level),Dis_risk(6,3,Comp_level),...
    Dis_risk(6,4,Comp_level),Dis_risk(6,5,Comp_level),...
    Dis_risk(6,6,Comp_level),nan];
%L=7
MatRisk(1:7,7)=[Dis_risk(7,1,Comp_level),...
    Dis_risk(7,2,Comp_level),Dis_risk(7,3,Comp_level),...
    Dis_risk(7,4,Comp_level),Dis_risk(7,5,Comp_level),...
    Dis_risk(7,6,Comp_level),Dis_risk(7,7,Comp_level)];
 
 
 
  
 
Title_plot="B"; 
XandY_axesLimits=[0 8]; 
C_Bticks=[0.00 0.25 0.50 0.75 1.00]; 
Title_position=[-1.5 0 1.1];
Y_and_X_ticks=[1 2 3 4 5 6 7];
Y_and_X_tick_labels=["" "" "" "" "" "" ""];
X_label="Residents/lek";

%Make a figure
DrPlot=subplot(2,2,2);
        Cbar3(MatRisk,MatRisk)
        xlabel(X_label,'Position',[4.05,9,0])
        xlim(XandY_axesLimits)
        ylim(XandY_axesLimits)
        xticks(Y_and_X_ticks)
        yticks(Y_and_X_ticks)
        yticklabels(Y_and_X_tick_labels)
        xticklabels(Y_and_X_tick_labels)
        %y tick labels
        text(-0.65,0.87,0,'\alpha','color',[0.0 0.0 0.0],'FontSize',19)
        text(-0.65,1.9,0,'\beta','color',[0.0 0.0 0.0],'FontSize',19)
        text(-0.65,2.87,0,'\gamma','color',[0.0 0.0 0.0],'FontSize',19)
        text(-0.6,3.9,0,'\delta','color',[0.0 0.0 0.0],'FontSize',19)
        text(-0.6,4.87,0,'\epsilon','color',[0.0 0.0 0.0]','FontSize',19)
        text(-0.6,5.9,0,'\zeta','color',[0.0 0.0 0.0],'FontSize',19)
        text(-0.65,6.87,0,'\eta','color',[0.0 0.0 0.0],'FontSize',19)
        %x tick labels
        text(0.78,8.4,0,'1','color',[0.0 0.0 0.0],'FontSize',18)
        %text(1.78,8.4,0,'2','color',[0.5 0.5 0.5],'FontSize',18)
        text(2.78,8.4,0,'3','color',[0.0 0.0 0.0],'FontSize',18)
        %text(3.78,8.4,0,'4','color',[0.5 0.5 0.5],'FontSize',18)
        text(4.78,8.4,0,'5','color',[0.0 0.0 0.0],'FontSize',18)
        %text(5.78,8.4,0,'6','color',[0.5 0.5 0.5],'FontSize',18)
        text(6.78,8.4,0,'7','color',[0.0 0.0 0.0],'FontSize',18)
        az = 0;
        el = 90;
        view(az, el);
        a = get(DrPlot,'XTickLabel'); 
        set(DrPlot,'XTickLabel',a,'Fontsize',18)
        title(Title_plot,'FontSize',24)
        title (Title_plot, 'position' , Title_position)
        caxis manual
        caxis([0.00 1.00]);
        colormap(DrPlot,flipud(copper));
        set(DrPlot,'zticklabel',num2str(get(gca,'ztick')','%.2f'),...
            'TickDir','out')
        h1 = colorbar('Ticks',[],'Position',[0.697 0.606 0.02 0.3],...
            'YAxisLocation','right','XTick', C_Bticks);
        h1.Limits = [0 1.0];
        text(8.4,5.58,0,{'Disruption risk'},...
            'Color','black','FontSize',18,'Rotation',90)
        set(h1,'TickDir','out','xticklabel',num2str(get(h1,'xtick')',...
            '%.2f'))
        set(DrPlot,'Position',[0.44 0.5838 0.3347 0.3412])
        grid off
        set(DrPlot,'TickDir','out')


end
   