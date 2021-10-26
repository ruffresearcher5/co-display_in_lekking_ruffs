function GsskPlot = PlotGs_sens_lek_comp(Comp_level)
%%%%%Subplot function for supplementary figure C2_low-high%%%%%
%Plot of predicted satellite copulation gains given the fitness loss
%scenario where the most copulations are drawn away from high 
%ranking residents by a co-display under different resident competition 
%levels: low, medium, and high. 

H="Sk";
%matrix for predicted values from function
MatGs=zeros(7,7);
%Satellite competitive ability
Sat_Com_ab="medium";
%Resident copulation gains by lek size
%L=1
MatGs(1:7,1)=[SatGs(1,1,H,Sat_Com_ab,Comp_level),...
    nan,nan,nan,nan,nan,nan];
%L=2
MatGs(1:7,2)=[SatGs(2,1,H,Sat_Com_ab,Comp_level),...
    SatGs(2,2,H,Sat_Com_ab,Comp_level),nan,nan,nan,nan,nan];
%L=3
MatGs(1:7,3)=[SatGs(3,1,H,Sat_Com_ab,Comp_level),...
    SatGs(3,2,H,Sat_Com_ab,Comp_level),...
    SatGs(3,3,H,Sat_Com_ab,Comp_level),...
    nan,nan,nan,nan];
%L=4
MatGs(1:7,4)=[SatGs(4,1,H,Sat_Com_ab,Comp_level),...
    SatGs(4,2,H,Sat_Com_ab,Comp_level),...
    SatGs(4,3,H,Sat_Com_ab,Comp_level),...
    SatGs(4,4,H,Sat_Com_ab,Comp_level),nan,nan,nan];
%L=5
MatGs(1:7,5)=[SatGs(5,1,H,Sat_Com_ab,Comp_level),...
    SatGs(5,2,H,Sat_Com_ab,Comp_level),...
    SatGs(5,3,H,Sat_Com_ab,Comp_level),...
    SatGs(5,4,H,Sat_Com_ab,Comp_level),...
    SatGs(5,5,H,Sat_Com_ab,Comp_level),nan,nan];
%L=6
MatGs(1:7,6)=[SatGs(6,1,H,Sat_Com_ab,Comp_level),...
    SatGs(6,2,H,Sat_Com_ab,Comp_level),...
    SatGs(6,3,H,Sat_Com_ab,Comp_level),...
    SatGs(6,4,H,Sat_Com_ab,Comp_level),...
    SatGs(6,5,H,Sat_Com_ab,Comp_level),...
    SatGs(6,6,H,Sat_Com_ab,Comp_level),nan];
%L=7
MatGs(1:7,7)=[SatGs(7,1,H,Sat_Com_ab,Comp_level),...
    SatGs(7,2,H,Sat_Com_ab,Comp_level),...
    SatGs(7,3,H,Sat_Com_ab,Comp_level),...
    SatGs(7,4,H,Sat_Com_ab,Comp_level),...
    SatGs(7,5,H,Sat_Com_ab,Comp_level),...
    SatGs(7,6,H,Sat_Com_ab,Comp_level),...
    SatGs(7,7,H,Sat_Com_ab,Comp_level)];



  
 

X_axesLimits=[0 8];
Y_axesLimits=[0 8];
XandY_ticks=[1 3 5 7];
Title_position=[-1.5 0 1.1];
X_label="Residents/lek";
%Make a figure
switch Comp_level
    case "high"
        GsskPlot=subplot(3,4,2);
                Cbar3(MatGs,MatGs)
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
                a = get(GsskPlot,'XTickLabel'); 
                set(GsskPlot,'XTickLabel',a,'Fontsize',11)
                Title_plot="B";
                title(Title_plot,'FontSize',24)
                title (Title_plot, 'position' , Title_position)   
                colormap(GsskPlot,jet);
                caxis manual
                caxis([0.11 2.41]);
     case "medium"
        GsskPlot=subplot(3,4,6);
                Cbar3(MatGs,MatGs)
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
                a = get(GsskPlot,'XTickLabel'); 
                set(GsskPlot,'XTickLabel',a,'Fontsize',11) 
                colormap(GsskPlot,jet);
                caxis manual
                caxis([0.11 2.41]);
      case "low"
        GsskPlot=subplot(3,4,10);
                Cbar3(MatGs,MatGs)
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
                a = get(GsskPlot,'XTickLabel'); 
                set(GsskPlot,'XTickLabel',a,'Fontsize',11)
                colormap(GsskPlot,jet);
                caxis manual
                caxis([0.11 2.41]);
                C_Bticks=[0.11 0.61 1.11 1.61 2.11 2.41];
                hr1 = colorbar('Ticks',[],'Position',...
                    [0.48 0.11 0.02 0.817],...
                    'YAxisLocation','right','XTick', C_Bticks);
                    hr1.Limits = [0.11 2.41];
                    text(9,0.5,0,...
                        {'Satellite co-display copulation reward'},...
                        'Color','black','FontSize',18,'Rotation',90)
                    set(hr1,'TickDir','out','xticklabel',...
                        num2str(get(hr1,'xtick')','%.2f'))

end





