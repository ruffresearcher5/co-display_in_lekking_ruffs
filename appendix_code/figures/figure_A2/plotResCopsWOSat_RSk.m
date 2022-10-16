function KrRSkPlot = plotResCopsWOSat_RSk()
%%%%%Subplot function for supplementary figure A2_D%%%%%
%Plot of hypothetical fitness loss scenario where co-displays do draw the
%heighest prportion of copulations from lowest ranked residents. 
 
 
%matrix for predicted values from function
ResCopsMat=zeros(7,7);
%scenario specification
h="RSk";

%Resident copulations when displaying alone by lek size

%Resident copulations when displaying alone by lek size
%L=1
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



  
 
Title_plot="(d)"; 
sub_plot_num=4;
subplot_position=[0.399 0.14 0.3347 0.3412];
response_colormap=colormap_Res_RHP_Dr();
color_axis_limits=[0 8];
C_ticks=[];
c_ram_dec=[];
C_ramp_position=[0 0 0 0];
C_axis_lab=[];
KrRSkPlot = ...
    plot_response_rank_and_lek_size_four_subplot...
    (Title_plot, sub_plot_num,subplot_position,ResCopsMat,...
    response_colormap,color_axis_limits,C_ramp_position,C_ticks,...
    c_ram_dec,C_axis_lab);




end


