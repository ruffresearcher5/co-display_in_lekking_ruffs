function plotB = Plot_total_cops_on_lek()
%%%%%Subplot function for supplementary figure 2_B of manuscript with
% manuscript with running head: Co-display in lekking ruffs%%%%%
%Plot of estimated total copulations on a lek from Widemo and Owens (1995)
%regression. The regressions are modified to include a satellite 
%presence effect and the time a satellite spends with his prefered resident
%during the peak leking season.

%lek range
Leks=1:7;
%estimates for each lek size
RCopulations=[round(TotalCopsonLek(1),2),TotalCopsonLek(2),...
    TotalCopsonLek(3),TotalCopsonLek(4),TotalCopsonLek(5),...
    TotalCopsonLek(6),TotalCopsonLek(7)];

w=2;
x_limits=[0 8];
y_limits=[0 10];
x_ticks=[1 3 5 7];
y_ticks=[0 2.5 5.0 7.5 10.0];
titles_spot=[-1.5 10.1];
y_axis_tit={"Total copulations"};

%plot relationship
plotB=subplot(2,2,2);    
        plot(Leks,RCopulations,'k','LineWidth',w);
        xlim(x_limits)
        ylim(y_limits)
        xticks(x_ticks)
        yticks(y_ticks)
        set(plotB,'Fontsize',15)
        title("B",'FontSize',24)
        title ( 'B' , 'position' , titles_spot)
        ylabel(y_axis_tit,'FontSize',18)
        set(plotB,'box','off','TickDir','out','yticklabel',...
            num2str(get(gca,'ytick')','%.1f'))
        set(plotB,'Position',[0.6 0.6 0.2 0.3])
        

end

