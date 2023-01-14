function GrskPlot = plotResGr_main_text()
%%%%%Subplot function for supplementary figure 2_A%%%%%
%Plot of predicted resident copulation rewards given the fitness loss
%scenario skew, where the most copulations are drawn away from high 
%ranking residents by a co-display. 
  
 
h="Sk";
%matrix for predicted values from function

%Satellite competitive ability
Sat_Com_ab="medium";
Comp_level="medium";
%Resident copulation gains by lek size

%plot resident rewards
%%%define inputs
Title_plot="(a)"; 
sub_plot_num=1;
subplot_position=[0.174 0.5838 0.3347 0.3412];
Mat_G_Res_r = get_all_G_Res_r( h,Sat_Com_ab,Comp_level);
response_colormap=colormap_Res_rewards( );
color_axis_limits=[-2 4];
C_ticks=[-2.00 0.00 2.00 4.00];
c_ram_dec='%.1f';
C_ramp_position=[0.4325 0.58 0.02 0.345];
C_axis_lab='Resident co-display reward';
%%%plot
GrskPlot = ...
    plot_response_rank_and_lek_size_four_subplot...
    (Title_plot, sub_plot_num,subplot_position,Mat_G_Res_r,...
    response_colormap,color_axis_limits,C_ramp_position,C_ticks,...
    c_ram_dec,C_axis_lab);



end
   


