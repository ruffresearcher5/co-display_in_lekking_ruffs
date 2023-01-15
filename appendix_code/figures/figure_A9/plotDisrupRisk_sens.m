function DrPlot = plotDisrupRisk_sens(Comp_level)
%%%%%Subplot function for supplementary figure A9_d,f,g%%%%%
%Plot of assumed function for resident disruption risk, under different 
%levels of resident competition levels, Comp_level, which can be specified
%as low, medium, or high.

%Preduction matrix
MatRisk=zeros(7,7);


%Predict disruptive risk by lek size.
%lek.  Columns are leks and rows are ranks. 
%L=1
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
 

 
  
 
X_axesLimits=[0 8];
Y_axesLimits=[0 8];
Y_and_X_ticks=[1 2 3 4 5 6 7];
Y_and_X_tick_labels=["" "" "" "" "" "" ""];
Title_position=[0.75 0 1.1];
X_label="Lek size (Residents/lek)";
switch Comp_level
    case "low"
        Title_plot="(d)"; 
        %Make a figure
        DrPlot=subplot(3,2,2);
                Cbar3(MatRisk,MatRisk)
                xlim(X_axesLimits)
                ylim(Y_axesLimits)
        xticks(Y_and_X_ticks)
        yticks(Y_and_X_ticks)
        xticklabels(Y_and_X_tick_labels)
        yticklabels(Y_and_X_tick_labels)
        %y tick labels
        text(-0.65,0.87,0,'\alpha','color',[0.0 0.0 0.0],'FontSize',13)
        text(-0.65,1.9,0,'\beta','color',[0.0 0.0 0.0],'FontSize',13)
        text(-0.65,2.87,0,'\gamma','color',[0.0 0.0 0.0],'FontSize',13)
        text(-0.6,3.9,0,'\delta','color',[0.0 0.0 0.0],'FontSize',13)
        text(-0.6,4.87,0,'\epsilon','color',[0.0 0.0 0.0]','FontSize',13)
        text(-0.6,5.9,0,'\zeta','color',[0.0 0.0 0.0],'FontSize',13)
        text(-0.65,6.87,0,'\eta','color',[0.0 0.0 0.0],'FontSize',13)
        %x tick labels
        text(0.78,8.4,0,'1','color',[0.0 0.0 0.0],'FontSize',12)
        %text(1.78,8.4,0,'2','color',[0.5 0.5 0.5],'FontSize',18)
        text(2.78,8.4,0,'3','color',[0.0 0.0 0.0],'FontSize',12)
        %text(3.78,8.4,0,'4','color',[0.5 0.5 0.5],'FontSize',18)
        text(4.78,8.4,0,'5','color',[0.0 0.0 0.0],'FontSize',12)
        %text(5.78,8.4,0,'6','color',[0.5 0.5 0.5],'FontSize',18)
        text(6.78,8.4,0,'7','color',[0.0 0.0 0.0],'FontSize',12)
                az = 0;
                el = 90;
                view(az, el);
                a = get(DrPlot,'XTickLabel'); 
                set(DrPlot,'XTickLabel',a,'Fontsize',12)
                title(Title_plot,'FontSize',24)
                title (Title_plot, 'position' , Title_position,'FontWeight',...
            'Normal')   
                colormap(colormap_Res_RHP_Dr( ));
                caxis manual
                caxis([0.0 1.0])
                set(DrPlot,'Position',[0.4103 0.7093 0.3347 0.2157])
                                                              grid off
       set(DrPlot,'TickDir','out')
    case "medium"
        Title_plot="(e)"; 
        %Make a figure
        DrPlot=subplot(3,2,4);
                Cbar3(MatRisk,MatRisk)
                xlim(X_axesLimits)
                ylim(Y_axesLimits)
        xticks(Y_and_X_ticks)
        yticks(Y_and_X_ticks)
        xticklabels(Y_and_X_tick_labels)
        yticklabels(Y_and_X_tick_labels)
        %y tick labels
        text(-0.65,0.87,0,'\alpha','color',[0.0 0.0 0.0],'FontSize',13)
        text(-0.65,1.9,0,'\beta','color',[0.0 0.0 0.0],'FontSize',13)
        text(-0.65,2.87,0,'\gamma','color',[0.0 0.0 0.0],'FontSize',13)
        text(-0.6,3.9,0,'\delta','color',[0.0 0.0 0.0],'FontSize',13)
        text(-0.6,4.87,0,'\epsilon','color',[0.0 0.0 0.0]','FontSize',13)
        text(-0.6,5.9,0,'\zeta','color',[0.0 0.0 0.0],'FontSize',13)
        text(-0.65,6.87,0,'\eta','color',[0.0 0.0 0.0],'FontSize',13)
        %x tick labels
        text(0.78,8.4,0,'1','color',[0.0 0.0 0.0],'FontSize',12)
        %text(1.78,8.4,0,'2','color',[0.5 0.5 0.5],'FontSize',18)
        text(2.78,8.4,0,'3','color',[0.0 0.0 0.0],'FontSize',12)
        %text(3.78,8.4,0,'4','color',[0.5 0.5 0.5],'FontSize',18)
        text(4.78,8.4,0,'5','color',[0.0 0.0 0.0],'FontSize',12)
        %text(5.78,8.4,0,'6','color',[0.5 0.5 0.5],'FontSize',18)
        text(6.78,8.4,0,'7','color',[0.0 0.0 0.0],'FontSize',12)
                az = 0;
                el = 90;
                view(az, el);
                a = get(DrPlot,'XTickLabel'); 
                set(DrPlot,'XTickLabel',a,'Fontsize',12)
                title(Title_plot,'FontSize',24)
                title (Title_plot, 'position' , Title_position, 'FontWeight',...
            'Normal')   
                colormap(colormap_Res_RHP_Dr( ));
                caxis manual
                caxis([0.0 1.0])
                set(DrPlot,'Position',[0.4103 0.4096 0.3347 0.2157])
                                                              grid off
       set(DrPlot,'TickDir','out')
    case "high"
        Title_plot="(f)"; 
        %Make a figure
        DrPlot=subplot(3,2,6);
                Cbar3(MatRisk,MatRisk)
                xlabel(X_label,'Position',[4.05,9,0])
                xlim(X_axesLimits)
                ylim(Y_axesLimits)
        xticks(Y_and_X_ticks)
        yticks(Y_and_X_ticks)
        xticklabels(Y_and_X_tick_labels)
        yticklabels(Y_and_X_tick_labels)
        %y tick labels
        text(-0.65,0.87,0,'\alpha','color',[0.0 0.0 0.0],'FontSize',13)
        text(-0.65,1.9,0,'\beta','color',[0.0 0.0 0.0],'FontSize',13)
        text(-0.65,2.87,0,'\gamma','color',[0.0 0.0 0.0],'FontSize',13)
        text(-0.6,3.9,0,'\delta','color',[0.0 0.0 0.0],'FontSize',13)
        text(-0.6,4.87,0,'\epsilon','color',[0.0 0.0 0.0]','FontSize',13)
        text(-0.6,5.9,0,'\zeta','color',[0.0 0.0 0.0],'FontSize',13)
        text(-0.65,6.87,0,'\eta','color',[0.0 0.0 0.0],'FontSize',13)
        %x tick labels
        text(0.78,8.4,0,'1','color',[0.0 0.0 0.0],'FontSize',12)
        %text(1.78,8.4,0,'2','color',[0.5 0.5 0.5],'FontSize',18)
        text(2.78,8.4,0,'3','color',[0.0 0.0 0.0],'FontSize',12)
        %text(3.78,8.4,0,'4','color',[0.5 0.5 0.5],'FontSize',18)
        text(4.78,8.4,0,'5','color',[0.0 0.0 0.0],'FontSize',12)
        %text(5.78,8.4,0,'6','color',[0.5 0.5 0.5],'FontSize',18)
        text(6.78,8.4,0,'7','color',[0.0 0.0 0.0],'FontSize',12)
                az = 0;
                el = 90;
                view(az, el);
                a = get(DrPlot,'XTickLabel'); 
                set(DrPlot,'XTickLabel',a,'Fontsize',12)
                title(Title_plot,'FontSize',24)
                title (Title_plot, 'position' , Title_position, 'FontWeight',...
            'Normal')   
                colormap(colormap_Res_RHP_Dr( ));
                caxis manual
                caxis([0.0 1.0])
                set(DrPlot,'Position',[0.4103 0.1100 0.3347 0.2157])
                C_Bticks=[0.00 0.25 0.50 0.75 1.00];
                hr1 = colorbar('Ticks',[],'Position',...
                    [0.64 0.105 0.02 0.817],...
                    'YAxisLocation','right','XTick', C_Bticks);
                    hr1.Limits = [0.0 1.0];
                    text(8.7,-4.25,0,...
                        {'Disruption risk'},...
                        'Color','black','FontSize',18,'Rotation',90)
                    set(hr1,'TickDir','out','xticklabel',...
                        num2str(get(hr1,'xtick')','%.2f'))
                                               grid off
       set(DrPlot,'TickDir','out')

end
    
