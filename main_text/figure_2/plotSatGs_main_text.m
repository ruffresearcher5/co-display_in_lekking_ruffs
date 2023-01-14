function GsskPlot = plotSatGs_main_text()
%%%%%Subplot function for supplementary figure 2_B%%%%%
%Plot of predicted satellite copulation rewards given the fitness loss
%scenario where most copulations are drawn away from high
%ranking residents by a co-display. 
%scenario
h="UP";
%Satellite competitive ability and competition between residents
Sat_Com_ab="medium";
Comp_level="medium";

%plot Satellite rewards
%%%define inputs
Title_plot="(b)"; 
sub_plot_num=2;
subplot_position=[0.47 0.5838 0.3347 0.3412];
Mat_G_Sat_r = get_all_G_Sat_r( h,Sat_Com_ab,Comp_level);
response_colormap=colormap_Sat_rewards( );
color_axis_limits=[0 4];
C_ticks=[0 1 2 3 4];
c_ram_dec='%.1f';
C_ramp_position=[0.728 0.58 0.02 0.345];
C_axis_lab='Satellite co-display reward';
%%%plot
GsskPlot = ...
    plot_response_rank_and_lek_size_four_subplot...
    (Title_plot, sub_plot_num,subplot_position,Mat_G_Sat_r,...
    response_colormap,color_axis_limits,C_ramp_position,C_ticks,...
    c_ram_dec,C_axis_lab);
%%%%add anotations
       text(0.8,max_resident_per_lek( 1, Mat_G_Sat_r)+0.1,4,{'*'},...
           'Color',white_or_black_asterisk( 1,Mat_G_Sat_r),'FontWeight',...
           'bold','FontSize',28)
       text(1.8,max_resident_per_lek( 2, Mat_G_Sat_r)+0.1,4,{'*'},...
           'Color',white_or_black_asterisk( 2,Mat_G_Sat_r),'FontWeight',...
           'bold','FontSize',28)
       text(2.8,max_resident_per_lek( 3, Mat_G_Sat_r)+0.1,4,{'*'},...
           'Color',white_or_black_asterisk( 2,Mat_G_Sat_r),'FontWeight',...
           'bold','FontSize',28)
       text(3.8,max_resident_per_lek( 4, Mat_G_Sat_r)+0.1,4,{'*'},...
           'Color',white_or_black_asterisk( 4,Mat_G_Sat_r),'FontWeight',...
           'bold','FontSize',28)
       text(4.8,max_resident_per_lek( 5, Mat_G_Sat_r)+0.1,4,{'*'},...
           'Color',white_or_black_asterisk( 5,Mat_G_Sat_r),'FontWeight',...
           'bold','FontSize',28)
       text(5.8,max_resident_per_lek( 6, Mat_G_Sat_r)+0.1,4,{'*'},...
           'Color',white_or_black_asterisk( 6,Mat_G_Sat_r),'FontWeight',...
           'bold','FontSize',28)
       text(6.8,max_resident_per_lek( 7, Mat_G_Sat_r)+0.1,4,{'*'},...
           'Color',white_or_black_asterisk( 7,Mat_G_Sat_r),'FontWeight',...
           'bold','FontSize',28)


end
   





