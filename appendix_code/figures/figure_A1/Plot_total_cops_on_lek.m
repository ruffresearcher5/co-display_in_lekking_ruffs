function plotC = TotalCopsPlotforsupplemental()
%%%%%Subplot function for supplementary figure A1_C%%%%%
%Plot of estimated total copulations on a lek from Widemo and Owens (1995)
%regression. The regressions are modified to include a satellite 
%presence effect and the time a satellite spends with his prefered resident
%during the peak leking season.

Leks=1:9;
%estimates for each lek size
RCopulations=[round(Total_cops_on_lek(1),2),Total_cops_on_lek(2),...
    Total_cops_on_lek(3),Total_cops_on_lek(4),Total_cops_on_lek(5),...
    Total_cops_on_lek(6),Total_cops_on_lek(7),Total_cops_on_lek(8),Total_cops_on_lek(9)];
 
 
w=2;
x_limits=[0 10];
y_limits=[0 10];
x_ticks=[0 1 2 3 4 5 6 7 8 9 10];
y_ticks=[0 2.0 4.0 6.0 8.0 10.0];
%X_tick_labels=["1" "" "3" "" "5" "" "7"];
titles_spot=[0.6 10.1];
y_axis_tit={"Total copulations"};
x_axis_tit={"Residents/lek"};
B_line=[0.0 2.0 4.0 6.0 8.0 10.0];
B_line_x=[7 7 7 7 7 7];
 
%plot relationship
plotC=subplot(2,2,3);
        plot(B_line_x,B_line,'color',[0.75 0.75 0.75],'LineWidth',w);
        hold on
        plot(Leks,RCopulations,'b','LineWidth',w);
        hold off
        xlim(x_limits)
        ylim(y_limits)
        xticks(x_ticks)
        yticks(y_ticks)
        %xticklabels(X_tick_labels)
        set(plotC,'Fontsize',15)
        title("(c)",'FontSize',24)
        title ( '(c)' , 'position' , titles_spot, 'FontWeight', 'Normal')
        ylabel(y_axis_tit,'FontSize',18)
        xlabel(x_axis_tit,'FontSize',18)
        set(plotC,'box','off','TickDir','out','yticklabel',...
            num2str(get(gca,'ytick')','%.1f'))
        set(plotC,'Position',[0.203 0.1533 0.20 0.2978])
        


end

