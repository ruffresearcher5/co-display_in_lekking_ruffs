function GrskPlot = plotGr_sens_sat(Sat_Com_ab)
%%%%%Subplot function for supplementary figure D2_weak-strong%%%%%
%Plot of predicted resident copulation rewards given the fitness loss
%scenario where the most copulations are drawn away from high 
%ranking residents by a co-display under different satellite competitive 
%abilities: weak, medium, and strong. 
  
 
h="Sk";
%matrix for predicted values from function
Mat_G_Res_r=zeros(7,7);
%Satellite competitive ability
Comp_level="medium";
%Resident copulation rewards by lek size
%L=1
Mat_G_Res_r(1:7,1)=[Res_reward(1,1,h,Sat_Com_ab,Comp_level),...
    nan,nan,nan,nan,nan,nan];
%L=2
Mat_G_Res_r(1:7,2)=[Res_reward(2,1,h,Sat_Com_ab,Comp_level),...
    Res_reward(2,2,h,Sat_Com_ab,Comp_level),nan,nan,nan,nan,nan];
%L=3
Mat_G_Res_r(1:7,3)=[Res_reward(3,1,h,Sat_Com_ab,Comp_level),...
    Res_reward(3,2,h,Sat_Com_ab,Comp_level),...
    Res_reward(3,3,h,Sat_Com_ab,Comp_level),...
    nan,nan,nan,nan];
%L=4
Mat_G_Res_r(1:7,4)=[Res_reward(4,1,h,Sat_Com_ab,Comp_level),...
    Res_reward(4,2,h,Sat_Com_ab,Comp_level),...
    Res_reward(4,3,h,Sat_Com_ab,Comp_level),...
    Res_reward(4,4,h,Sat_Com_ab,Comp_level),nan,nan,nan];
%L=5
Mat_G_Res_r(1:7,5)=[Res_reward(5,1,h,Sat_Com_ab,Comp_level),...
    Res_reward(5,2,h,Sat_Com_ab,Comp_level),...
    Res_reward(5,3,h,Sat_Com_ab,Comp_level),...
    Res_reward(5,4,h,Sat_Com_ab,Comp_level),...
    Res_reward(5,5,h,Sat_Com_ab,Comp_level),nan,nan];
%L=6
Mat_G_Res_r(1:7,6)=[Res_reward(6,1,h,Sat_Com_ab,Comp_level),...
    Res_reward(6,2,h,Sat_Com_ab,Comp_level),...
    Res_reward(6,3,h,Sat_Com_ab,Comp_level),...
    Res_reward(6,4,h,Sat_Com_ab,Comp_level),...
    Res_reward(6,5,h,Sat_Com_ab,Comp_level),...
    Res_reward(6,6,h,Sat_Com_ab,Comp_level),nan];
%L=7
Mat_G_Res_r(1:7,7)=[Res_reward(7,1,h,Sat_Com_ab,Comp_level),...
    Res_reward(7,2,h,Sat_Com_ab,Comp_level),...
    Res_reward(7,3,h,Sat_Com_ab,Comp_level),...
    Res_reward(7,4,h,Sat_Com_ab,Comp_level),...
    Res_reward(7,5,h,Sat_Com_ab,Comp_level),...
    Res_reward(7,6,h,Sat_Com_ab,Comp_level),...
    Res_reward(7,7,h,Sat_Com_ab,Comp_level)];


  
 

X_axesLimits=[0 8];
Y_axesLimits=[0 8];
Y_and_X_ticks=[1 2 3 4 5 6 7];
Y_and_X_tick_labels=["" "" "" "" "" "" ""];
Title_position=[-1.5 0 1.1];
Y_label="Resident rank";
X_label="Residents/lek";
%Make a figure
switch Sat_Com_ab
    case "strong"
        GrskPlot=subplot(3,4,1);
                Cbar3(Mat_G_Res_r,Mat_G_Res_r)
                ylabel(Y_label,'Position',[-1,4,0],'Rotation',90)
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
        text(2.78,8.4,0,'3','color',[0.0 0.0 0.0],'FontSize',12)
        text(4.78,8.4,0,'5','color',[0.0 0.0 0.0],'FontSize',12)
        text(6.78,8.4,0,'7','color',[0.0 0.0 0.0],'FontSize',12)
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
                caxis([-2.0 4.00]);
                        grid off
        set(GrskPlot,'TickDir','out')
                
     case "medium"
        GrskPlot=subplot(3,4,5);
                Cbar3(Mat_G_Res_r,Mat_G_Res_r)
                ylabel(Y_label,'Position',[-1,4,0],'Rotation',90)
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
        text(2.78,8.4,0,'3','color',[0.0 0.0 0.0],'FontSize',12)
        text(4.78,8.4,0,'5','color',[0.0 0.0 0.0],'FontSize',12)
        text(6.78,8.4,0,'7','color',[0.0 0.0 0.0],'FontSize',12)
                az = 0;
                el = 90;
                view(az, el);
                a = get(GrskPlot,'XTickLabel'); 
                set(GrskPlot,'XTickLabel',a,'Fontsize',11) 
                colormap(GrskPlot,flipud(hot));
               caxis manual
                caxis([-2.0 4.00]);
                        grid off
        set(GrskPlot,'TickDir','out')
      case "weak"
        GrskPlot=subplot(3,4,9);
                Cbar3(Mat_G_Res_r,Mat_G_Res_r)
                xlabel(X_label,'Position',[4.05,9,0])
                ylabel(Y_label,'Position',[-1,4,0],'Rotation',90)
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
        text(2.78,8.4,0,'3','color',[0.0 0.0 0.0],'FontSize',12)
        text(4.78,8.4,0,'5','color',[0.0 0.0 0.0],'FontSize',12)
        text(6.78,8.4,0,'7','color',[0.0 0.0 0.0],'FontSize',12)
                az = 0;
                el = 90;
                view(az, el);
                a = get(GrskPlot,'XTickLabel'); 
                set(GrskPlot,'XTickLabel',a,'Fontsize',11)
                colormap(GrskPlot,flipud(hot));
                caxis manual
                caxis([-2.0 4.00]);
                C_Bticks=[-2.00 0.00 2.00 4.00];
                hr1 = colorbar('Ticks',[],'Position',...
                    [0.275 0.11 0.02 0.817],...
                    'YAxisLocation','right','XTick', C_Bticks);
                    hr1.Limits = [-2.0 4.0];
                    text(9,1,0,...
                        {'Resident co-display copulation reward'},...
                        'Color','black','FontSize',18,'Rotation',90)
                    set(hr1,'TickDir','out','xticklabel',...
                        num2str(get(hr1,'xtick')','%.2f'))
                    arrows_reject=annotation('doublearrow',[.32 .32],...
                        [0.11 .36]);
                    arrows_reject.Color = 'red';
                    text(14.5,4.8,0,{'Rejects'},...
                            'Color','red','FontSize',15,'Rotation',90)
                    arrows_recruits=annotation('doublearrow',[.32 .32],...
                        [.4 .926]);
                    arrows_recruits.Color = 'blue';
                    text(14.5,-11,0,{'Recruits'},...
                            'Color','blue','FontSize',15,'Rotation',90)
                    text(13.7,-2,0,{'Ambivalent'},...
                            'Color','black','FontSize',11)

                    grid off
        set(GrskPlot,'TickDir','out')

end

