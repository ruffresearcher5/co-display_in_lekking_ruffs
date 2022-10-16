function GrskPlot = plotGr_sens_sat(Sat_Com_ab)
%%%%%Subplot function for supplementary figure A10_weak-strong%%%%%
%Plot of predicted resident copulation rewards given the fitness loss
%scenario where the most copulations are drawn away from high 
%ranking residents by a co-display under different satellite competitive 
%abilities: weak, medium, and strong. 
  
%scienario
h="Sk";
%Satellite competitive ability
Comp_level="medium";
%Plot inputs
Mat_G_Res_r=get_all_G_Res_r( h,Sat_Com_ab,Comp_level);
response_colormap=colormap_Res_rewards( );
color_axis_limits=[-2.0 4.00];

%Make a figure
switch Sat_Com_ab
    case "strong"
        Title_plot="(a)";
        sub_plot_num=1;
        X_label="";
        Y_label="Resident rank";
        GrskPlot = ...
    plot_response_rank_and_lek_size_12_subplot...
    (Title_plot, sub_plot_num,Mat_G_Res_r,...
    response_colormap,color_axis_limits,X_label,Y_label);
     case "medium"
        Title_plot="";
        sub_plot_num=5;
        X_label="";
        Y_label="Resident rank";
        GrskPlot = ...
        plot_response_rank_and_lek_size_12_subplot...
    (Title_plot, sub_plot_num,Mat_G_Res_r,...
    response_colormap,color_axis_limits,X_label,Y_label);
      case "weak"
        Title_plot="";
        sub_plot_num=9;
        X_label="Residents/lek";
        Y_label="Resident rank";
        GrskPlot = ...
        plot_response_rank_and_lek_size_12_subplot...
    (Title_plot, sub_plot_num,Mat_G_Res_r,...
    response_colormap,color_axis_limits,X_label,Y_label);
                colormap(GrskPlot,response_colormap);
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
                        num2str(get(hr1,'xtick')','%.1f'))

end

