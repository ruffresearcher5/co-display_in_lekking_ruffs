function GsnPlot = plotSatGs_Null()
%%%%%Subplot function for supplementary figure B5_A%%%%%
%Plot of predicted satellite copulation rewards given the fitness loss
%scenario where no copulations are drawn by a co-display. 
 
h="Null";
%matrix for predicted values from function
Mat_G_Sat_s=zeros(7,7);
%Satellite competitive ability
Sat_Com_ab="medium";
Comp_level="medium";
%Satellite copulation gains by lek size
%L=1
Mat_G_Sat_s(1:7,1)=[Satellite_rewards(1,1,h,Sat_Com_ab,Comp_level),...
    nan,nan,nan,nan,nan,nan];
%L=2
Mat_G_Sat_s(1:7,2)=[Satellite_rewards(2,1,h,Sat_Com_ab,Comp_level),...
    Satellite_rewards(2,2,h,Sat_Com_ab,Comp_level),nan,nan,nan,nan,nan];
%L=3
Mat_G_Sat_s(1:7,3)=[Satellite_rewards(3,1,h,Sat_Com_ab,Comp_level),...
    Satellite_rewards(3,2,h,Sat_Com_ab,Comp_level),...
    Satellite_rewards(3,3,h,Sat_Com_ab,Comp_level),...
    nan,nan,nan,nan];
%L=4
Mat_G_Sat_s(1:7,4)=[Satellite_rewards(4,1,h,Sat_Com_ab,Comp_level),...
    Satellite_rewards(4,2,h,Sat_Com_ab,Comp_level),...
    Satellite_rewards(4,3,h,Sat_Com_ab,Comp_level),...
    Satellite_rewards(4,4,h,Sat_Com_ab,Comp_level),nan,nan,nan];
%L=5
Mat_G_Sat_s(1:7,5)=[Satellite_rewards(5,1,h,Sat_Com_ab,Comp_level),...
    Satellite_rewards(5,2,h,Sat_Com_ab,Comp_level),...
    Satellite_rewards(5,3,h,Sat_Com_ab,Comp_level),...
    Satellite_rewards(5,4,h,Sat_Com_ab,Comp_level),...
    Satellite_rewards(5,5,h,Sat_Com_ab,Comp_level),nan,nan];
%L=6
Mat_G_Sat_s(1:7,6)=[Satellite_rewards(6,1,h,Sat_Com_ab,Comp_level),...
    Satellite_rewards(6,2,h,Sat_Com_ab,Comp_level),...
    Satellite_rewards(6,3,h,Sat_Com_ab,Comp_level),...
    Satellite_rewards(6,4,h,Sat_Com_ab,Comp_level),...
    Satellite_rewards(6,5,h,Sat_Com_ab,Comp_level),...
    Satellite_rewards(6,6,h,Sat_Com_ab,Comp_level),nan];
%L=7
Mat_G_Sat_s(1:7,7)=[Satellite_rewards(7,1,h,Sat_Com_ab,Comp_level),...
    Satellite_rewards(7,2,h,Sat_Com_ab,Comp_level),...
    Satellite_rewards(7,3,h,Sat_Com_ab,Comp_level),...
    Satellite_rewards(7,4,h,Sat_Com_ab,Comp_level),...
    Satellite_rewards(7,5,h,Sat_Com_ab,Comp_level),...
    Satellite_rewards(7,6,h,Sat_Com_ab,Comp_level),...
    Satellite_rewards(7,7,h,Sat_Com_ab,Comp_level)];


  
 
Title_plot="A"; 
X_axesLimits=[0 8];
Y_axesLimits=[0 8];
Y_and_X_ticks=[1 2 3 4 5 6 7];
Y_and_X_tick_labels=["" "" "" "" "" "" ""];
Title_position=[-1.5 0 1.1];
Y_label="Resident rank";

%Make a figure
GsnPlot=subplot(2,2,1);
        Cbar3(Mat_G_Sat_s,Mat_G_Sat_s)
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
        a = get(GsnPlot,'XTickLabel'); 
        set(GsnPlot,'XTickLabel',a,'Fontsize',18)
        title(Title_plot,'FontSize',24)
        title (Title_plot, 'position' , Title_position)   
        colormap(jet);
        set(GsnPlot,'Position',[0.174 0.6 0.3347 0.3412])
        caxis manual
        caxis([0.05 2.45]);
        grid off
        set(GsnPlot,'TickDir','out')
       

end
   



