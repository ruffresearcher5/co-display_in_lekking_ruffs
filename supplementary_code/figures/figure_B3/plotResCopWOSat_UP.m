function FrupPlot = plotResCopWOSat_UP()
%%%%%Subplot function for supplementary figure B3_B%%%%%
%Plot of hypothetical fitness loss scenario where co-displays do draw the
%same prportion of copulations from all residents. 
 
 
%matrix for predicted values from function
ResCopsMat=zeros(7,7);
%scenario specification
h="UP";

%Resident copulations when displaying alone by lek size

ResCopsMat(1:7,1)=[nan,nan,nan,nan,nan,nan,nan];
%L=2
ResCopsMat(1:7,2)=[Single_res_cops(2,1,h),Single_res_cops(2,2,h),nan,nan,nan,...
    nan,nan];
%L=3
ResCopsMat(1:7,3)=[Single_res_cops(3,1,h),Single_res_cops(3,2,h),...
    Single_res_cops(3,3,h),nan,nan,nan,nan];
%L=4
ResCopsMat(1:7,4)=[Single_res_cops(4,1,h),Single_res_cops(4,2,h),...
    Single_res_cops(4,3,h),Single_res_cops(4,4,h),nan,nan,nan];
%L=5
ResCopsMat(1:7,5)=[Single_res_cops(5,1,h),Single_res_cops(5,2,h),...
    Single_res_cops(5,3,h),Single_res_cops(5,4,h),Single_res_cops(5,5,h),nan,nan];
%L=6
ResCopsMat(1:7,6)=[Single_res_cops(6,1,h),Single_res_cops(6,2,h),...
    Single_res_cops(6,3,h),Single_res_cops(6,4,h),Single_res_cops(6,5,h),...
    Single_res_cops(6,6,h),nan];
%L=7
ResCopsMat(1:7,7)=[Single_res_cops(7,1,h),Single_res_cops(7,2,h),...
    Single_res_cops(7,3,h),Single_res_cops(7,4,h),Single_res_cops(7,5,h),...
    Single_res_cops(7,6,h),Single_res_cops(7,7,h)];



  
 
Title_plot="B"; 
X_axesLimits=[0 8];
Y_axesLimits=[0 8];
Title_position=[-1.5 0 1.1];
Y_and_X_ticks=[1 2 3 4 5 6 7];
Y_and_X_tick_labels=["" "" "" "" "" "" ""];

%Make a figure
FrupPlot=subplot(2,2,2);
        Cbar3(ResCopsMat,ResCopsMat)
        xlim(X_axesLimits)
        ylim(Y_axesLimits)
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
        caxis manual
        caxis([0.00 8.00]);
        a = get(FrupPlot,'XTickLabel'); 
        set(FrupPlot,'XTickLabel',a,'Fontsize',18)
        title(Title_plot,'FontSize',24)
        title (Title_plot, 'position' , Title_position)   
        colormap(jet);
        set(FrupPlot,'zticklabel',num2str(get(gca,'ztick')','%.2f'),...
            'TickDir','out')
        set(FrupPlot,'Position',[0.399 0.6 0.3347 0.3412])
        grid off
        set(FrupPlot,'TickDir','out')


end
   


