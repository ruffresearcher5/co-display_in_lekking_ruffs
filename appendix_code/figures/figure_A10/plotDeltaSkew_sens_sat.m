function SkewPlot = plotDeltaSkew_sens_sat(Sat_strength)
%%%%%Subplot function for supplementary figure D2_D_strong-weak%%%%%
%Plot of predicted skew when a co-display is present on the lek. Plot is
%specified for different satellite streangths: strong, medium, and weak.
  
 

%matrix for predicted values from function
MatDeltaSk=zeros(7,7);
%Satellite competitive ability
Comp_level="medium";
%Resident copulation gains by lek size
Leks=1:7;
h="Sk";
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
y_ticks=[0.00 0.50 1.00];
X_tick_labels=["1" "" "3" "" "5" "" "7"];
titles_spot=[-1.9 1.04];
x_axis_tit="Residents/lek";
y_axis_tit="Resident skew";
%Make a figure
switch Sat_strength
    case "strong"
        NonAlphaSkeSkews=[nan,NewSkewLM( 2,2,h,Sat_strength,Comp_level ),NewSkewLM( 3,3,h,Sat_strength,Comp_level ),...
    NewSkewLM( 4,4,h,Sat_strength,Comp_level ),NewSkewLM( 5,2,h,Sat_strength,Comp_level ),NewSkewLM( 6,1,h,Sat_strength,Comp_level ),NewSkewLM( 7,3,h,Sat_strength,Comp_level )];
        SkewPlot=subplot(3,4,4);
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
        set(SkewPlot,'Fontsize',13)
        title("D",'FontSize',24)
        title ( 'D' , 'position' , titles_spot)
        ylabel(y_axis_tit,'FontSize',13)
        set(SkewPlot,'box','off','TickDir','out','yticklabel',num2str(get(gca,'ytick')','%.1f'))
        set(SkewPlot,'Position',[0.78 0.7093 0.0961 0.21])
        LEG=legend('No co-display','Co-display','Location','southeast');
        LEG.FontSize = 8;
        legend boxoff
     case "medium"
         NonAlphaSkeSkews=[nan,NewSkewLM( 2,2,h,Sat_strength,Comp_level ),NewSkewLM( 3,3,h,Sat_strength,Comp_level ),...
    NewSkewLM( 4,4,h,Sat_strength,Comp_level ),NewSkewLM( 5,2,h,Sat_strength,Comp_level ),NewSkewLM( 6,2,h,Sat_strength,Comp_level ),NewSkewLM( 7,2,h,Sat_strength,Comp_level )];
        SkewPlot=subplot(3,4,8);
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
        ylabel(y_axis_tit,'FontSize',13)
        set(SkewPlot,'Fontsize',13)
        set(SkewPlot,'box','off','TickDir','out','yticklabel',num2str(get(gca,'ytick')','%.1f'))
        set(SkewPlot,'Position',[0.78 0.4096 0.0961 0.21])

      case "weak"
        NonAlphaSkeSkews=[nan,NewSkewLM( 2,2,h,Sat_strength,Comp_level ),NewSkewLM( 3,3,h,Sat_strength,Comp_level ),...
            NewSkewLM( 4,4,h,Sat_strength,Comp_level ),NewSkewLM( 5,5,h,Sat_strength,Comp_level ),NewSkewLM( 6,2,h,Sat_strength,Comp_level ),NewSkewLM( 7,2,h,Sat_strength,Comp_level )];
        SkewPlot=subplot(3,4,12);
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
            set(SkewPlot,'Fontsize',13)
            ylabel(y_axis_tit,'FontSize',13)
            xlabel(x_axis_tit,'FontSize',13)
            set(SkewPlot,'box','off','TickDir','out','yticklabel',num2str(get(gca,'ytick')','%.1f'))
            set(SkewPlot,'Position',[0.78 0.1100 0.0961 0.21])

end






