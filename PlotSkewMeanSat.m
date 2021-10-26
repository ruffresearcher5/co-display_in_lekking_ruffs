function plotD = PlotSkewMeanSat( )
Leks=1:7;
h="Sk";
Sat_strength="medium";
Comp_level="medium";
Skews=[round(Skew_of_lek(1),2),Skew_of_lek(2),Skew_of_lek(3), ...
    Skew_of_lek(4),Skew_of_lek(5),Skew_of_lek(6),Skew_of_lek(7)];
%Skew

NonAlphaSkeSkews=[nan,NewSkewLM( 2,2,h,Sat_strength,Comp_level ),NewSkewLM( 3,3,h,Sat_strength,Comp_level ),...
    NewSkewLM( 4,4,h,Sat_strength,Comp_level ),NewSkewLM( 5,2,h,Sat_strength,Comp_level ),NewSkewLM( 6,2,h,Sat_strength,Comp_level ),NewSkewLM( 7,2,h,Sat_strength,Comp_level )];

w=2;
x_limits=[0 8];
y_limits=[0 1.0];
x_ticks=[1 2 3 4 5 6 7];
y_ticks=[0.00 0.25 0.50 0.75 1.00];
X_tick_labels=["1" "" "3" "" "5" "" "7"];
titles_spot=[-1.9 1.0];
x_axis_tit="Residents/lek";
y_axis_tit="Resident mating skew";



    plotD=subplot(2,2,4);    
        plot(Leks,Skews,'k','LineWidth',w);
        %hold on
        %plot(Leks,AlphaSkeSkews,'LineStyle',' --','Color',[0.5 0.5 0.5],'LineWidth',w);
        %hold off
        hold on
        plot(Leks,NonAlphaSkeSkews,'LineStyle',' :','Color',[0.5 0.5 0.5],'LineWidth',w);
        hold off
        xlim(x_limits)
        ylim(y_limits)
        xticks(x_ticks)
        yticks(y_ticks)
        xticklabels(X_tick_labels)
        set(plotD,'Fontsize',18)
        title("D",'FontSize',24)
        title ( 'D' , 'position' , titles_spot)
        ylabel(y_axis_tit,'FontSize',20)
        xlabel(x_axis_tit,'FontSize',19)
        set(plotD,'box','off','TickDir','out','yticklabel',num2str(get(gca,'ytick')','%.2f'))
        set(plotD,'Position',[0.58 0.1100 0.17 0.34])
        LEG=legend('No co-display','Co-display','Location','southeast');
        %set(plotD,'Position',[0.2250 0.07 0.1594 0.2391])
        LEG.FontSize = 12;
        legend boxoff
end

