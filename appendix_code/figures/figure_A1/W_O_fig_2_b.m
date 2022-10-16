function W_O_fig_2_b = W_O_fig_2_b()
%W_O_FIG_2_B inserts modified version of Widemo and Owens (1995) figure 2b
%into fig B1.
I = imread('O_W_fig_2_b.jpg');
titles_spot=[-1.5 1.01];
x_axis_tit="Mean residents/lek";
y_axis_tit={"\alpha resident"; "proportion of copulations"};
W_O_fig_2_b=subplot(2,2,1);
    imshow(I)
    title("A",'FontSize',24)
    title ( 'A' , 'position' , titles_spot)
    ylabel(y_axis_tit,'FontSize',17)
    xlabel(x_axis_tit,'FontSize',18)
end

