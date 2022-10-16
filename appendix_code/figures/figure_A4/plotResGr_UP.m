function GrUPPlot = plotResGr_UP()
%%%%%Subplot function for supplementary figure A4_B%%%%%
%Plot of predicted resident copulation rewards given the fitness loss
%scenario where copulations are drawn in equal proportion from 
%each resident by a co-display.
 
h="UP";
%matrix for predicted values from function
Mat_G_Res_r=zeros(7,7);
%Satellite competitive ability
Sat_Com_ab="medium";
Comp_level="medium";
%Resident copulation gains by lek size
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



  
 
Title_plot="(b)"; 
sub_plot_num=2;
subplot_position=[0.399 0.6 0.3347 0.3412];
response_colormap=colormap_Res_rewards( );
color_axis_limits=[-2.00 4.00];
C_ticks=[];
c_ram_dec=[];
C_ramp_position=[0 0 0 0];
C_axis_lab=[];
%%%plot
GrUPPlot = ...
    plot_response_rank_and_lek_size_four_subplot...
    (Title_plot, sub_plot_num,subplot_position,Mat_G_Res_r,...
    response_colormap,color_axis_limits,C_ramp_position,C_ticks,...
    c_ram_dec,C_axis_lab);




end
   


