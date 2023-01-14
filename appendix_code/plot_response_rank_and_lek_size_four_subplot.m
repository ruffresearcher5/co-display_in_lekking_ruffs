function plot_response = ...
    plot_response_rank_and_lek_size_four_subplot...
    (Title_plot, sub_plot_num,subplot_position,response_matrix,...
    response_colormap,color_axis_limits,C_ramp_position,C_ticks,...
    c_ram_dec,C_axis_lab)
%makes a plot with the input matrix that has all lek sizes and ranks.

switch sub_plot_num
    case 1
        Y_label="Resident rank";
        X_label="";
    case 2
        Y_label="";
        X_label="";
    case 3
        Y_label="Resident rank";
        X_label="Residents/lek";
    case 4
        Y_label="";
        X_label="Residents/lek";
end
X_axesLimits=[0 8];
Y_axesLimits=[0 8];
Y_and_X_ticks=[1 2 3 4 5 6 7];
Y_and_X_tick_labels=["" "" "" "" "" "" ""];
Title_position=[0.75 0 1.1];
plot_response=subplot(2,2,sub_plot_num);
        Cbar3(response_matrix ,response_matrix )
        xlim(X_axesLimits)
        ylim(Y_axesLimits)
        xticks(Y_and_X_ticks)
        yticks(Y_and_X_ticks)
        xticklabels(Y_and_X_tick_labels)
        yticklabels(Y_and_X_tick_labels)
        ylabel(Y_label,'Position',[-1,4,0],'Rotation',90)
        xlabel(X_label,'Position',[4.05,9,0])
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
        text(2.78,8.4,0,'3','color',[0.0 0.0 0.0],'FontSize',18)
        text(4.78,8.4,0,'5','color',[0.0 0.0 0.0],'FontSize',18)
        text(6.78,8.4,0,'7','color',[0.0 0.0 0.0],'FontSize',18)
        az = 0;
        el = 90;
        view(az, el);
        a = get(plot_response,'XTickLabel'); 
        set(plot_response,'XTickLabel',a,'Fontsize',18)
        title(Title_plot,'FontSize',24)
        title (Title_plot, 'position' , Title_position, 'FontWeight',...
            'Normal')   
        colormap(plot_response,response_colormap);
        set(plot_response,'Position',subplot_position)
        caxis manual
        caxis(color_axis_limits);
        hr1 = colorbar('Ticks',[],'Position',...
                    C_ramp_position,...
                    'YAxisLocation','right','XTick', C_ticks);
        hr1.Limits = color_axis_limits;
        text(8.5,7.5,0,{C_axis_lab},...
                        'Color','black','FontSize',18,'Rotation',90)
        set(hr1,'TickDir','out','xticklabel',...
                        num2str(get(hr1,'xtick')',c_ram_dec))
        grid off
        set(plot_response,'TickDir','out','FontWeight', 'Normal')


end

