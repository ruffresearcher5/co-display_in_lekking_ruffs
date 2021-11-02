function SatPerPlot = plotSkPercSatCop_sens( Sat_Com_ab )
%%%%%Subplot function for supplementary figure D6_C_weak-strong%%%%%
%Plot of percent of copulations on a lek a satellite can 
%obtain when co-displaying. Plot is specified for different 
%resident satellite strengths levels: weak, medium, and strong. This is 
%under the Sk scenario.

h="Sk";
%matrix for predicted values from function
MatPercCopSat=zeros(7,7);
%Competetion between residents
Comp_level="medium";
%predicted percent of copulations by lek size



%L=1
MatPercCopSat(1:7,1)=[CopSatPerc(1,1,h,Sat_Com_ab,Comp_level),...
    nan,nan,nan,nan,nan,nan];
%L=2
MatPercCopSat(1:7,2)=[CopSatPerc(2,1,h,Sat_Com_ab,Comp_level),...
    CopSatPerc(2,2,h,Sat_Com_ab,Comp_level),nan,nan,nan,nan,nan];
%L=3
MatPercCopSat(1:7,3)=[CopSatPerc(3,1,h,Sat_Com_ab,Comp_level),...
    CopSatPerc(3,2,h,Sat_Com_ab,Comp_level),...
    CopSatPerc(3,3,h,Sat_Com_ab,Comp_level),...
    nan,nan,nan,nan];
%L=4
MatPercCopSat(1:7,4)=[CopSatPerc(4,1,h,Sat_Com_ab,Comp_level),...
    CopSatPerc(4,2,h,Sat_Com_ab,Comp_level),...
    CopSatPerc(4,3,h,Sat_Com_ab,Comp_level),...
    CopSatPerc(4,4,h,Sat_Com_ab,Comp_level),nan,nan,nan];
%L=5
MatPercCopSat(1:7,5)=[CopSatPerc(5,1,h,Sat_Com_ab,Comp_level),...
    CopSatPerc(5,2,h,Sat_Com_ab,Comp_level),...
    CopSatPerc(5,3,h,Sat_Com_ab,Comp_level),...
    CopSatPerc(5,4,h,Sat_Com_ab,Comp_level),...
    CopSatPerc(5,5,h,Sat_Com_ab,Comp_level),nan,nan];
%L=6
MatPercCopSat(1:7,6)=[CopSatPerc(6,1,h,Sat_Com_ab,Comp_level),...
    CopSatPerc(6,2,h,Sat_Com_ab,Comp_level),...
    CopSatPerc(6,3,h,Sat_Com_ab,Comp_level),...
    CopSatPerc(6,4,h,Sat_Com_ab,Comp_level),...
    CopSatPerc(6,5,h,Sat_Com_ab,Comp_level),...
    CopSatPerc(6,6,h,Sat_Com_ab,Comp_level),nan];
%L=7
MatPercCopSat(1:7,7)=[CopSatPerc(7,1,h,Sat_Com_ab,Comp_level),...
    CopSatPerc(7,2,h,Sat_Com_ab,Comp_level),...
    CopSatPerc(7,3,h,Sat_Com_ab,Comp_level),...
    CopSatPerc(7,4,h,Sat_Com_ab,Comp_level),...
    CopSatPerc(7,5,h,Sat_Com_ab,Comp_level),...
    CopSatPerc(7,6,h,Sat_Com_ab,Comp_level),...
    CopSatPerc(7,7,h,Sat_Com_ab,Comp_level)];

X_axesLimits=[0 8];
Y_axesLimits=[0 8];
XandY_ticks=[1 3 5 7];
Title_position=[-1.5 0 1.1];
X_label="Residents/lek";

%Make a figure
switch Sat_Com_ab
    case "strong"
        SatPerPlot=subplot(3,4,3);
                Cbar3(MatPercCopSat,MatPercCopSat)
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
                a = get(SatPerPlot,'XTickLabel'); 
                set(SatPerPlot,'XTickLabel',a,'Fontsize',11)
                Title_plot="C";
                title(Title_plot,'FontSize',24)
                title (Title_plot, 'position' , Title_position)   
                colormap(SatPerPlot,flipud(pink));
                set(SatPerPlot,'Position',[0.47 0.7093 0.1566 0.2157])
                caxis manual
                caxis([0 36]);
                
     case "medium"
        SatPerPlot=subplot(3,4,7);
                Cbar3(MatPercCopSat,MatPercCopSat)
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
                a = get(SatPerPlot,'XTickLabel'); 
                set(SatPerPlot,'XTickLabel',a,'Fontsize',11) 
                set(SatPerPlot,'Position',[0.47 0.4096 0.1566 0.2157])
                colormap(SatPerPlot,flipud(pink));
                caxis manual
                caxis([0 36]);
      case "weak"
        SatPerPlot=subplot(3,4,11);
                Cbar3(MatPercCopSat,MatPercCopSat)
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
                a = get(SatPerPlot,'XTickLabel'); 
                set(SatPerPlot,'XTickLabel',a,'Fontsize',11)
                set(SatPerPlot,'Position',[0.47 0.1100 0.1566 0.2157])
                colormap(SatPerPlot,flipud(pink));
                caxis manual
                caxis([0 36]);
                


end




