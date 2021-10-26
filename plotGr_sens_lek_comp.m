function GrskPlot = plotGr_sens_lek_comp(Comp_level)
%%%%%Subplot function for supplementary figure C2_weak-strong%%%%%
%Plot of predicted resident copulation gains given the fitness loss
%scenario where the most copulations are drawn away from high 
%ranking residents by a co-display under different resident competition 
%level on the lek: low, medium, and high. 

H="Sk";
%matrix for predicted values from function
MatGr=zeros(7,7);
%Satellite competitive ability
Sat_Com_ab="medium";
%Resident copulation gains by lek size
%L=1
MatGr(1:7,1)=[ResGr(1,1,H,Sat_Com_ab,Comp_level),...
    nan,nan,nan,nan,nan,nan];
%L=2
MatGr(1:7,2)=[ResGr(2,1,H,Sat_Com_ab,Comp_level),...
    ResGr(2,2,H,Sat_Com_ab,Comp_level),nan,nan,nan,nan,nan];
%L=3
MatGr(1:7,3)=[ResGr(3,1,H,Sat_Com_ab,Comp_level),...
    ResGr(3,2,H,Sat_Com_ab,Comp_level),...
    ResGr(3,3,H,Sat_Com_ab,Comp_level),...
    nan,nan,nan,nan];
%L=4
MatGr(1:7,4)=[ResGr(4,1,H,Sat_Com_ab,Comp_level),...
    ResGr(4,2,H,Sat_Com_ab,Comp_level),...
    ResGr(4,3,H,Sat_Com_ab,Comp_level),...
    ResGr(4,4,H,Sat_Com_ab,Comp_level),nan,nan,nan];
%L=5
MatGr(1:7,5)=[ResGr(5,1,H,Sat_Com_ab,Comp_level),...
    ResGr(5,2,H,Sat_Com_ab,Comp_level),...
    ResGr(5,3,H,Sat_Com_ab,Comp_level),...
    ResGr(5,4,H,Sat_Com_ab,Comp_level),...
    ResGr(5,5,H,Sat_Com_ab,Comp_level),nan,nan];
%L=6
MatGr(1:7,6)=[ResGr(6,1,H,Sat_Com_ab,Comp_level),...
    ResGr(6,2,H,Sat_Com_ab,Comp_level),...
    ResGr(6,3,H,Sat_Com_ab,Comp_level),...
    ResGr(6,4,H,Sat_Com_ab,Comp_level),...
    ResGr(6,5,H,Sat_Com_ab,Comp_level),...
    ResGr(6,6,H,Sat_Com_ab,Comp_level),nan];
%L=7
MatGr(1:7,7)=[ResGr(7,1,H,Sat_Com_ab,Comp_level),...
    ResGr(7,2,H,Sat_Com_ab,Comp_level),...
    ResGr(7,3,H,Sat_Com_ab,Comp_level),...
    ResGr(7,4,H,Sat_Com_ab,Comp_level),...
    ResGr(7,5,H,Sat_Com_ab,Comp_level),...
    ResGr(7,6,H,Sat_Com_ab,Comp_level),...
    ResGr(7,7,H,Sat_Com_ab,Comp_level)];



  
 

X_axesLimits=[0 8];
Y_axesLimits=[0 8];
XandY_ticks=[1 3 5 7];
Title_position=[-1.5 0 1.1];
Y_label="Resident rank";
X_label="Residents/lek";
%Make a figure
switch Comp_level
    case "high"
        GrskPlot=subplot(3,4,1);
                Cbar3(MatGr,MatGr)
                ylabel(Y_label,'Position',[-1,4,0],'Rotation',90)
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
                a = get(GrskPlot,'XTickLabel'); 
                set(GrskPlot,'XTickLabel',a,'Fontsize',11)
                Title_plot="A";
                title(Title_plot,'FontSize',24)
                title (Title_plot, 'position' , Title_position)   
                colormap(GrskPlot,flipud(hot));
                caxis manual
                caxis([0.14 3.8]);
                
     case "medium"
        GrskPlot=subplot(3,4,5);
                Cbar3(MatGr,MatGr)
                ylabel(Y_label,'Position',[-1,4,0],'Rotation',90)
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
                a = get(GrskPlot,'XTickLabel'); 
                set(GrskPlot,'XTickLabel',a,'Fontsize',11) 
                colormap(GrskPlot,flipud(hot));
                caxis manual
                caxis([0.14 3.8]);
      case "low"
        GrskPlot=subplot(3,4,9);
                Cbar3(MatGr,MatGr)
                xlabel(X_label,'Position',[4.05,9,0])
                ylabel(Y_label,'Position',[-1,4,0],'Rotation',90)
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
                a = get(GrskPlot,'XTickLabel'); 
                set(GrskPlot,'XTickLabel',a,'Fontsize',11)
                colormap(GrskPlot,flipud(hot));
                caxis manual
                caxis([0.14 3.8]);
                C_Bticks=[0.14 0.80 1.80 2.80 3.80];
                hr1 = colorbar('Ticks',[],'Position',...
                    [0.275 0.11 0.02 0.817],...
                    'YAxisLocation','right','XTick', C_Bticks);
                    hr1.Limits = [0.14 3.80];
                    text(9,1,0,...
                        {'Resident co-display copulation reward'},...
                        'Color','black','FontSize',18,'Rotation',90)
                    set(hr1,'TickDir','out','xticklabel',...
                        num2str(get(hr1,'xtick')','%.2f'))
                    arrows_recruits=annotation('doublearrow',[.32 .32],...
                        [0.112 .926]);
                    arrows_recruits.Color = 'blue';
                    text(14.5,-6,0,{'Recruits'},...
                            'Color','blue','FontSize',15,'Rotation',90)

end



