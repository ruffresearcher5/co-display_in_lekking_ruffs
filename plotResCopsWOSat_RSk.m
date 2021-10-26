function FrrskPlot = plotResCopsWOSat_RSk()
%%%%%Subplot function for supplementary figure B3_D%%%%%
%Plot of hypothetical fitness loss scenario where co-displays do draw the
%heighest prportion of copulations from lowest ranked residents. 
 
 
%matrix for predicted values from function
ResCopsMat=zeros(7,7);
%scenario specification
H="RSk";

%Resident copulations when displaying alone by lek size

%Resident copulations when displaying alone by lek size
%L=1
ResCopsMat(1:7,1)=[nan,nan,nan,nan,nan,nan,nan];
%L=2
ResCopsMat(1:7,2)=[Single_res_cops(2,1,H),Single_res_cops(2,2,H),nan,nan,nan,...
    nan,nan];
%L=3
ResCopsMat(1:7,3)=[Single_res_cops(3,1,H),Single_res_cops(3,2,H),...
    Single_res_cops(3,3,H),nan,nan,nan,nan];
%L=4
ResCopsMat(1:7,4)=[Single_res_cops(4,1,H),Single_res_cops(4,2,H),...
    Single_res_cops(4,3,H),Single_res_cops(4,4,H),nan,nan,nan];
%L=5
ResCopsMat(1:7,5)=[Single_res_cops(5,1,H),Single_res_cops(5,2,H),...
    Single_res_cops(5,3,H),Single_res_cops(5,4,H),Single_res_cops(5,5,H),nan,nan];
%L=6
ResCopsMat(1:7,6)=[Single_res_cops(6,1,H),Single_res_cops(6,2,H),...
    Single_res_cops(6,3,H),Single_res_cops(6,4,H),Single_res_cops(6,5,H),...
    Single_res_cops(6,6,H),nan];
%L=7
ResCopsMat(1:7,7)=[Single_res_cops(7,1,H),Single_res_cops(7,2,H),...
    Single_res_cops(7,3,H),Single_res_cops(7,4,H),Single_res_cops(7,5,H),...
    Single_res_cops(7,6,H),Single_res_cops(7,7,H)];



  
 
Title_plot="D"; 
X_axesLimits=[0 8];
Y_axesLimits=[0 8];
Y_and_X_ticks=[1 2 3 4 5 6 7];
Y_and_X_tick_labels=["" "" "" "" "" "" ""];
Title_position=[-1.5 0 1.1];
X_label="Residents/lek";


%Make a figure
FrrskPlot=subplot(2,2,4);
        Cbar3(ResCopsMat,ResCopsMat)
        xlabel(X_label,'Position',[4.05,9,0])
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
        a = get(FrrskPlot,'XTickLabel'); 
        set(FrrskPlot,'XTickLabel',a,'Fontsize',18)
        title(Title_plot,'FontSize',24)
        title (Title_plot, 'position' , Title_position)   
        colormap(jet);
        set(FrrskPlot,'zticklabel',num2str(get(gca,'ztick')','%.2f'),...
            'TickDir','out')
        set(FrrskPlot,'Position',[0.399 0.15 0.3347 0.3412])
        grid off
        set(FrrskPlot,'TickDir','out')

end


