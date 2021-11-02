function SatproskPlot = plotSatProportion_sens_lek_comp(Comp_level)
%%%%%Subplot function for supplementary figure D3_low-high%%%%%
%Plot of predicted satellite co-display copulation proportion given 
%the fitness loss scenario where the most copulations are drawn away from 
%high ranking residents by a co-display under different resident 
%competition levels: low, medium, and high. 
  
 
h="Sk";
%matrix for predicted values from function
MatSatPr=zeros(7,7);
%Satellite competitive ability
Sat_Com_ab="medium";
%Resident copulation gains by lek size
%L=1
MatSatPr(1:7,1)=[Satellite_proportion(1,1,h,Sat_Com_ab,Comp_level),...
    nan,nan,nan,nan,nan,nan];
%L=2
MatSatPr(1:7,2)=[Satellite_proportion(2,1,h,Sat_Com_ab,Comp_level),...
    Satellite_proportion(2,2,h,Sat_Com_ab,Comp_level),nan,nan,nan,nan,nan];
%L=3
MatSatPr(1:7,3)=[Satellite_proportion(3,1,h,Sat_Com_ab,Comp_level),...
    Satellite_proportion(3,2,h,Sat_Com_ab,Comp_level),...
    Satellite_proportion(3,3,h,Sat_Com_ab,Comp_level),...
    nan,nan,nan,nan];
%L=4
MatSatPr(1:7,4)=[Satellite_proportion(4,1,h,Sat_Com_ab,Comp_level),...
    Satellite_proportion(4,2,h,Sat_Com_ab,Comp_level),...
    Satellite_proportion(4,3,h,Sat_Com_ab,Comp_level),...
    Satellite_proportion(4,4,h,Sat_Com_ab,Comp_level),nan,nan,nan];
%L=5
MatSatPr(1:7,5)=[Satellite_proportion(5,1,h,Sat_Com_ab,Comp_level),...
    Satellite_proportion(5,2,h,Sat_Com_ab,Comp_level),...
    Satellite_proportion(5,3,h,Sat_Com_ab,Comp_level),...
    Satellite_proportion(5,4,h,Sat_Com_ab,Comp_level),...
    Satellite_proportion(5,5,h,Sat_Com_ab,Comp_level),nan,nan];
%L=6
MatSatPr(1:7,6)=[Satellite_proportion(6,1,h,Sat_Com_ab,Comp_level),...
    Satellite_proportion(6,2,h,Sat_Com_ab,Comp_level),...
    Satellite_proportion(6,3,h,Sat_Com_ab,Comp_level),...
    Satellite_proportion(6,4,h,Sat_Com_ab,Comp_level),...
    Satellite_proportion(6,5,h,Sat_Com_ab,Comp_level),...
    Satellite_proportion(6,6,h,Sat_Com_ab,Comp_level),nan];
%L=7
MatSatPr(1:7,7)=[Satellite_proportion(7,1,h,Sat_Com_ab,Comp_level),...
    Satellite_proportion(7,2,h,Sat_Com_ab,Comp_level),...
    Satellite_proportion(7,3,h,Sat_Com_ab,Comp_level),...
    Satellite_proportion(7,4,h,Sat_Com_ab,Comp_level),...
    Satellite_proportion(7,5,h,Sat_Com_ab,Comp_level),...
    Satellite_proportion(7,6,h,Sat_Com_ab,Comp_level),...
    Satellite_proportion(7,7,h,Sat_Com_ab,Comp_level)];




  
 

X_axesLimits=[0 8];
Y_axesLimits=[0 8];
XandY_ticks=[1 3 5 7];
Title_position=[-1.5 0 1.1];
X_label="Residents/lek";
%Make a figure
switch Comp_level
    case "high"
        SatproskPlot=subplot(3,4,3);
                Cbar3(MatSatPr,MatSatPr)
                xlim(X_axesLimits)
                ylim(Y_axesLimits)
                xticks(XandY_ticks)
                yticks(XandY_ticks)
                yticklabels(["" "" "" ""])
                text(-0.7,0.87,0,'\alpha','Color','black','FontSize',13)
                text(-0.7,2.87,0,'\gamma','Color','black','FontSize',13)
                text(-0.7,4.87,0,'\epsilon','Color','black','FontSize',13)
                text(-0.7,6.87,0,'\eta','Color','black','FontSize',13)
                az = 0;
                el = 90;
                view(az, el);
                a = get(SatproskPlot,'XTickLabel'); 
                set(SatproskPlot,'XTickLabel',a,'Fontsize',11)
                Title_plot="C";
                title(Title_plot,'FontSize',24)
                title (Title_plot, 'position' , Title_position)   
                colormap(SatproskPlot,cool);
                caxis manual
                caxis([0.15 0.60]);
                set(SatproskPlot,'Position',[0.5322 0.7093 0.1566 0.2157])
     case "medium"
        SatproskPlot=subplot(3,4,7);
                Cbar3(MatSatPr,MatSatPr)
                xlim(X_axesLimits)
                ylim(Y_axesLimits)
                xticks(XandY_ticks)
                yticks(XandY_ticks)
                yticklabels(["" "" "" ""])
                text(-0.7,0.87,0,'\alpha','Color','black','FontSize',13)
                text(-0.7,2.87,0,'\gamma','Color','black','FontSize',13)
                text(-0.7,4.87,0,'\epsilon','Color','black','FontSize',13)
                text(-0.7,6.87,0,'\eta','Color','black','FontSize',13)
                az = 0;
                el = 90;
                view(az, el);
                a = get(SatproskPlot,'XTickLabel'); 
                set(SatproskPlot,'XTickLabel',a,'Fontsize',11) 
                colormap(SatproskPlot,cool);
                caxis manual
                caxis([0.15 0.60]);
                set(SatproskPlot,'Position',[0.5322 0.4096 0.1566 0.2157])
      case "low"
        SatproskPlot=subplot(3,4,11);
                Cbar3(MatSatPr,MatSatPr)
                xlabel(X_label,'Position',[4.05,9,0])
                xlim(X_axesLimits)
                ylim(Y_axesLimits)
                xticks(XandY_ticks)
                yticks(XandY_ticks)
                yticklabels(["" "" "" ""])
                text(-0.7,0.87,0,'\alpha','Color','black','FontSize',13)
                text(-0.7,2.87,0,'\gamma','Color','black','FontSize',13)
                text(-0.7,4.87,0,'\epsilon','Color','black','FontSize',13)
                text(-0.7,6.87,0,'\eta','Color','black','FontSize',13)
                az = 0;
                el = 90;
                view(az, el);
                a = get(SatproskPlot,'XTickLabel'); 
                set(SatproskPlot,'XTickLabel',a,'Fontsize',11)
                colormap(SatproskPlot,cool);
                caxis manual
                caxis([0.15 0.60]);
                set(SatproskPlot,'Position',[0.5322 0.1100 0.1566 0.2157])
                C_Bticks=[0.15 0.25 0.35 0.45 0.55 0.60];
                hr1 = colorbar('Ticks',[],'Position',...
                    [0.677 0.11 0.02 0.817],...
                    'YAxisLocation','right','XTick', C_Bticks);
                    hr1.Limits = [0.15 0.60];
                    text(9,2.5,0,...
                        {'Satellite copulations/co-display copulations'},...
                        'Color','black','FontSize',18,'Rotation',90)
                    set(hr1,'TickDir','out','xticklabel',...
                        num2str(get(hr1,'xtick')','%.2f'))
end










