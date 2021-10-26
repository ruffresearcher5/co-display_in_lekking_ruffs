function SatproskPlot = plotSatProportion_main_text()
%%%%%Subplot function for supplementary figure 1_C%%%%%
%Plot of predicted satellite co-display copulation proportion given 
%the fitness loss scenario where the most copulations are drawn away from 
%high ranking residents by a co-display. 
  
 
H="Sk";
%matrix for predicted values from function
MatSatPr=zeros(7,7);
%Satellite competitive ability
Comp_level="medium";
Sat_Com_ab="medium";
%Resident copulation gains by lek size
%L=1
MatSatPr(1:7,1)=[Satellite_proportion(1,1,H,Sat_Com_ab,Comp_level),...
    nan,nan,nan,nan,nan,nan];
%L=2
MatSatPr(1:7,2)=[Satellite_proportion(2,1,H,Sat_Com_ab,Comp_level),...
    Satellite_proportion(2,2,H,Sat_Com_ab,Comp_level),nan,nan,nan,nan,nan];
%L=3
MatSatPr(1:7,3)=[Satellite_proportion(3,1,H,Sat_Com_ab,Comp_level),...
    Satellite_proportion(3,2,H,Sat_Com_ab,Comp_level),...
    Satellite_proportion(3,3,H,Sat_Com_ab,Comp_level),...
    nan,nan,nan,nan];
%L=4
MatSatPr(1:7,4)=[Satellite_proportion(4,1,H,Sat_Com_ab,Comp_level),...
    Satellite_proportion(4,2,H,Sat_Com_ab,Comp_level),...
    Satellite_proportion(4,3,H,Sat_Com_ab,Comp_level),...
    Satellite_proportion(4,4,H,Sat_Com_ab,Comp_level),nan,nan,nan];
%L=5
MatSatPr(1:7,5)=[Satellite_proportion(5,1,H,Sat_Com_ab,Comp_level),...
    Satellite_proportion(5,2,H,Sat_Com_ab,Comp_level),...
    Satellite_proportion(5,3,H,Sat_Com_ab,Comp_level),...
    Satellite_proportion(5,4,H,Sat_Com_ab,Comp_level),...
    Satellite_proportion(5,5,H,Sat_Com_ab,Comp_level),nan,nan];
%L=6
MatSatPr(1:7,6)=[Satellite_proportion(6,1,H,Sat_Com_ab,Comp_level),...
    Satellite_proportion(6,2,H,Sat_Com_ab,Comp_level),...
    Satellite_proportion(6,3,H,Sat_Com_ab,Comp_level),...
    Satellite_proportion(6,4,H,Sat_Com_ab,Comp_level),...
    Satellite_proportion(6,5,H,Sat_Com_ab,Comp_level),...
    Satellite_proportion(6,6,H,Sat_Com_ab,Comp_level),nan];
%L=7
MatSatPr(1:7,7)=[Satellite_proportion(7,1,H,Sat_Com_ab,Comp_level),...
    Satellite_proportion(7,2,H,Sat_Com_ab,Comp_level),...
    Satellite_proportion(7,3,H,Sat_Com_ab,Comp_level),...
    Satellite_proportion(7,4,H,Sat_Com_ab,Comp_level),...
    Satellite_proportion(7,5,H,Sat_Com_ab,Comp_level),...
    Satellite_proportion(7,6,H,Sat_Com_ab,Comp_level),...
    Satellite_proportion(7,7,H,Sat_Com_ab,Comp_level)];


  
 

X_axesLimits=[0 8];
Y_axesLimits=[0 8];
Y_and_X_ticks=[1 2 3 4 5 6 7];
Y_and_X_tick_labels=["" "" "" "" "" "" ""];
Title_position=[-1.5 0 1.1];
X_label="Residents/lek";
Y_label="Resident rank";
%Make a figure
        SatproskPlot=subplot(2,2,3);
                Cbar3(MatSatPr,MatSatPr)
                xlabel(X_label,'Position',[4.05,9,0])
                ylabel(Y_label,'Position',[-1,4,0],'Rotation',90)
                xlim(X_axesLimits)
                ylim(Y_axesLimits)
                xticks(Y_and_X_ticks)
                yticks(Y_and_X_ticks)
                xticklabels(Y_and_X_tick_labels)
                yticklabels(Y_and_X_tick_labels)
        
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
                a = get(SatproskPlot,'XTickLabel'); 
                set(SatproskPlot,'XTickLabel',a,'Fontsize',18)
                Title_plot="C";
                title(Title_plot,'FontSize',24)
                title (Title_plot, 'position' , Title_position)   
                colormap(SatproskPlot,cool);
                caxis manual
                caxis([0.0 1.00]);
                set(SatproskPlot,'Position',[0.174 0.1100 0.3347 0.3412])
                C_Bticks=[0.00 0.25 0.50 0.75 1.00];
                hr1 = colorbar('Ticks',[],'Position',...
                    [0.4325 0.11 0.02 0.345],...
                    'YAxisLocation','right','XTick', C_Bticks);
                    hr1.Limits = [0.00 1.00];
                    text(8.5,6.5,0,...
                        {'Satellite proportion'},...
                        'Color','black','FontSize',18,'Rotation',90)
                    set(hr1,'TickDir','out','xticklabel',...
                        num2str(get(hr1,'xtick')','%.2f'))
                    set(hr1,'color',[0.0 0.0 0.0])
                grid off
                set(SatproskPlot,'TickDir','out')
end





