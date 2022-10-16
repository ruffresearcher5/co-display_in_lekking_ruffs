function SatproskPlot = plotSatProportion_sens_sat(Sat_Com_ab)
%%%%%Subplot function for supplementary figure A10_weak-strong%%%%%
%Plot of predicted satellite co-display copulation proportion given 
%the fitness loss scenario where the most copulations are drawn away from 
%high ranking residents by a co-display under different satellite 
%competitive abilities: weak, medium, and strong. 
  
 
h="Sk";
%matrix for predicted values from function
%Satellite competitive ability
Comp_level="medium";
%Satellite copulation proportion of dyad copulations by lek size
MatSatPr = get_all_Sat_prop_co_dis( h,Sat_Com_ab,Comp_level);
Sat_prop_colormap = colormap_sat_prop( );
color_axis_limits=[0.0 1.0];



%Make a figure
switch Sat_Com_ab
    case "strong"
        Title_plot="(c)";
        sub_plot_num=3;
        X_label="";
        Y_label="";
        SatproskPlot = ...
    plot_response_rank_and_lek_size_12_subplot...
    (Title_plot, sub_plot_num,MatSatPr,...
    Sat_prop_colormap,color_axis_limits,X_label,Y_label);
    set(SatproskPlot,'Position',[0.5322 0.7093 0.1566 0.2157])
     case "medium"
        Title_plot="";
        sub_plot_num=7;
        X_label="";
        Y_label="";
        SatproskPlot = ...
    plot_response_rank_and_lek_size_12_subplot...
    (Title_plot, sub_plot_num,MatSatPr,...
    Sat_prop_colormap,color_axis_limits,X_label,Y_label);
    set(SatproskPlot,'Position',[0.5322 0.4096 0.1566 0.2157])
      case "weak"
        Title_plot="";
        sub_plot_num=11;
        X_label="Residents/lek";
        Y_label="";
        SatproskPlot = ...
    plot_response_rank_and_lek_size_12_subplot...
    (Title_plot, sub_plot_num,MatSatPr,...
    Sat_prop_colormap,color_axis_limits,X_label,Y_label);
    set(SatproskPlot,'Position',[0.5322 0.1100 0.1566 0.2157])
                C_Bticks=[0.00 0.25 0.50 0.75 1.0];
                hr1 = colorbar('Ticks',[],'Position',...
                    [0.677 0.11 0.02 0.817],...
                    'YAxisLocation','right','XTick', C_Bticks);
                    hr1.Limits = [0.0 1.0];
                    text(9,2.5,0,...
                        {'Satellite copulations/co-display copulations'},...
                        'Color','black','FontSize',18,'Rotation',90)
                    set(hr1,'TickDir','out','xticklabel',...
                        num2str(get(hr1,'xtick')','%.2f'))

end





