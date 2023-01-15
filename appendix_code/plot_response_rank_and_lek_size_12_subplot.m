function plot_response = ...
    plot_response_rank_and_lek_size_12_subplot...
    (Title_plot, sub_plot_num,response_matrix,response_colormap,...
    color_axis_limits,X_label,Y_label)
%makes a plot with the input matrix that has all lek sizes and ranks.

X_axesLimits=[0 8];
Y_axesLimits=[0 8];
Y_and_X_ticks=[1 2 3 4 5 6 7];
Y_and_X_tick_labels=["" "" "" "" "" "" ""];
Title_position=[0.75 0 1.1];
plot_response=subplot(3,4,sub_plot_num);
        Cbar3(response_matrix ,response_matrix )
        xlim(X_axesLimits)
        ylim(Y_axesLimits)
        xticks(Y_and_X_ticks)
        yticks(Y_and_X_ticks)
        xticklabels(Y_and_X_tick_labels)
        yticklabels(Y_and_X_tick_labels)
        xlabel(X_label,'Position',[4.05,9,0])
        ylabel(Y_label,'Position',[-1,4,0],'Rotation',90)
        %y tick labels
        text(-1,0.75,0,'\alpha','color',[0.0 0.0 0.0],'FontSize',21)
        text(-0.96,1.8,0,'\beta','color',[0.0 0.0 0.0],'FontSize',21)
        text(-0.96,2.75,0,'\gamma','color',[0.0 0.0 0.0],'FontSize',21)
        text(-0.91,3.9,0,'\delta','color',[0.0 0.0 0.0],'FontSize',21)
        text(-0.91,4.75,0,'\epsilon','color',[0.0 0.0 0.0]','FontSize',21)
        text(-0.91,5.78,0,'\zeta','color',[0.0 0.0 0.0],'FontSize',21)
        text(-0.96,6.75,0,'\eta','color',[0.0 0.0 0.0],'FontSize',21)
        %x tick labels
        text(0.78,8.4,0,'1','color',[0.0 0.0 0.0],'FontSize',14)
        text(2.78,8.4,0,'3','color',[0.0 0.0 0.0],'FontSize',14)
        text(4.78,8.4,0,'5','color',[0.0 0.0 0.0],'FontSize',14)
        text(6.78,8.4,0,'7','color',[0.0 0.0 0.0],'FontSize',14)
        az = 0;
        el = 90;
        view(az, el);
        a = get(plot_response,'XTickLabel'); 
        set(plot_response,'XTickLabel',a,'Fontsize',15)
        title(Title_plot,'FontSize',24)
        title (Title_plot, 'position' , Title_position, 'FontWeight',...
            'Normal')   
        colormap(plot_response,response_colormap);
        caxis manual
        caxis(color_axis_limits);
        grid off
        set(plot_response,'TickDir','out')



end

