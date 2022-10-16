function SkewPlot = plotDeltaSkew_sens_lek_comp(Comp_level)
%%%%%Subplot function for supplementary figure C2_D_low-high%%%%%
%Plot of predicted skew when a co-display is present on the lek. Plot is
%specified for different resident competetion levels: low, medium, 
%and high.
  

H="Sk";
%matrix for predicted values from function
MatDeltaSk=zeros(7,7);
%Satellite competitive ability
Sat_Com_ab="medium";
%Resident copulation gains by lek size
%L=1
MatDeltaSk(1:7,1)=[Co_display_delta_Skew(1,1,H,Sat_Com_ab,Comp_level),...
    nan,nan,nan,nan,nan,nan];
%L=2
MatDeltaSk(1:7,2)=[Co_display_delta_Skew(2,1,H,Sat_Com_ab,Comp_level),...
    Co_display_delta_Skew(2,2,H,Sat_Com_ab,Comp_level),nan,nan,nan,nan,nan];
%L=3
MatDeltaSk(1:7,3)=[Co_display_delta_Skew(3,1,H,Sat_Com_ab,Comp_level),...
    Co_display_delta_Skew(3,2,H,Sat_Com_ab,Comp_level),...
    Co_display_delta_Skew(3,3,H,Sat_Com_ab,Comp_level),...
    nan,nan,nan,nan];
%L=4
MatDeltaSk(1:7,4)=[Co_display_delta_Skew(4,1,H,Sat_Com_ab,Comp_level),...
    Co_display_delta_Skew(4,2,H,Sat_Com_ab,Comp_level),...
    Co_display_delta_Skew(4,3,H,Sat_Com_ab,Comp_level),...
    Co_display_delta_Skew(4,4,H,Sat_Com_ab,Comp_level),nan,nan,nan];
%L=5
MatDeltaSk(1:7,5)=[Co_display_delta_Skew(5,1,H,Sat_Com_ab,Comp_level),...
    Co_display_delta_Skew(5,2,H,Sat_Com_ab,Comp_level),...
    Co_display_delta_Skew(5,3,H,Sat_Com_ab,Comp_level),...
    Co_display_delta_Skew(5,4,H,Sat_Com_ab,Comp_level),...
    Co_display_delta_Skew(5,5,H,Sat_Com_ab,Comp_level),nan,nan];
%L=6
MatDeltaSk(1:7,6)=[Co_display_delta_Skew(6,1,H,Sat_Com_ab,Comp_level),...
    Co_display_delta_Skew(6,2,H,Sat_Com_ab,Comp_level),...
    Co_display_delta_Skew(6,3,H,Sat_Com_ab,Comp_level),...
    Co_display_delta_Skew(6,4,H,Sat_Com_ab,Comp_level),...
    Co_display_delta_Skew(6,5,H,Sat_Com_ab,Comp_level),...
    Co_display_delta_Skew(6,6,H,Sat_Com_ab,Comp_level),nan];
%L=7
MatDeltaSk(1:7,7)=[Co_display_delta_Skew(7,1,H,Sat_Com_ab,Comp_level),...
    Co_display_delta_Skew(7,2,H,Sat_Com_ab,Comp_level),...
    Co_display_delta_Skew(7,3,H,Sat_Com_ab,Comp_level),...
    Co_display_delta_Skew(7,4,H,Sat_Com_ab,Comp_level),...
    Co_display_delta_Skew(7,5,H,Sat_Com_ab,Comp_level),...
    Co_display_delta_Skew(7,6,H,Sat_Com_ab,Comp_level),...
    Co_display_delta_Skew(7,7,H,Sat_Com_ab,Comp_level)];



X_axesLimits=[0 8];
Y_axesLimits=[0 8];
XandY_ticks=[1 3 5 7];
Title_position=[-1.5 0 1.1];
X_label="Residents/lek";
%Make a figure
switch Comp_level
    case "high"
        SkewPlot=subplot(3,4,4);
                Cbar3(MatDeltaSk,MatDeltaSk)
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
                a = get(SkewPlot,'XTickLabel'); 
                set(SkewPlot,'XTickLabel',a,'Fontsize',11)
                Title_plot="D";
                title(Title_plot,'FontSize',24)
                title (Title_plot, 'position' , Title_position)   
                colormap(SkewPlot,pink);
                caxis manual
                caxis([-0.8 0.01]);
                set(SkewPlot,'Position',[0.73 0.7093 0.1566 0.2157])
     case "medium"
        SkewPlot=subplot(3,4,8);
                Cbar3(MatDeltaSk,MatDeltaSk)
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
                a = get(SkewPlot,'XTickLabel'); 
                set(SkewPlot,'XTickLabel',a,'Fontsize',11) 
                colormap(SkewPlot,pink);
                caxis manual
                caxis([-0.8 0.01]);
                set(SkewPlot,'Position',[0.73 0.4096 0.1566 0.2157])
      case "low"
        SkewPlot=subplot(3,4,12);
                Cbar3(MatDeltaSk,MatDeltaSk)
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
                a = get(SkewPlot,'XTickLabel'); 
                set(SkewPlot,'XTickLabel',a,'Fontsize',11)
                colormap(SkewPlot,pink);
                caxis manual
                caxis([-0.8 0.01]);
                set(SkewPlot,'Position',[0.73 0.1100 0.1566 0.2157])
                C_Bticks=[-0.80 -0.60 -0.40 -0.20 0.01];
                hr1 = colorbar('Ticks',[],'Position',...
                    [0.875 0.11 0.02 0.817],...
                    'YAxisLocation','right','XTick', C_Bticks);
                    hr1.Limits = [-0.8 0.01];
                    text(9,0,0,...
                        {'Change in Resident mating skew'},...
                        'Color','black','FontSize',18,'Rotation',90)
                    set(hr1,'TickDir','out','xticklabel',...
                        num2str(get(hr1,'xtick')','%.2f'))

end








