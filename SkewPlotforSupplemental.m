function Skew_extractions = SkewPlotforSupplemental()
%%%%%Subplot function for supplementary figure B2_A%%%%%
%Plots estimated skew regressions from Widemo and Owens (1995): modified 
%regression from digitized reported line, extracted predictions from 
%reported line, and reported regression. 
 
%Set lek range
Leks=1:9;
 
%modified regression from digitized line
Skews=[round(Skew_of_lek(1),2),Skew_of_lek(2),Skew_of_lek(3), ...
    Skew_of_lek(4),Skew_of_lek(5),Skew_of_lek(6),Skew_of_lek(7),Skew_of_lek(8),Skew_of_lek(9)];
%reported regression
W_O_skews=[W_O_reported_skew(1),W_O_reported_skew(2),...
    W_O_reported_skew(3), W_O_reported_skew(4),W_O_reported_skew(5)...
    W_O_reported_skew(6),W_O_reported_skew(7),W_O_reported_skew(8),W_O_reported_skew(9)];
%extracted predictions from reported lines
W_O_skew_line_predictions=[1,0.98,0.94,0.89,0.80,0.71,0.64];

B_line=[0.0 0.2 0.4 0.6 0.8 1.0];
B_line_x=[7 7 7 7 7 7];
w=2;
x_limits=[0 10];
y_limits=[0 1.0];
x_ticks=[0 1 2 3 4 5 6 7 8 9 10];
%X_tick_labels=[];
y_ticks=[0.00 0.2 0.4 0.6 0.8 1.0];
titles_spot=[-1.2 1.05];
x_axis_tit="Residents/lek";

%plot relationships
Skew_extractions=subplot(2,2,2);    
        plot(B_line_x,B_line,'color',[0.75 0.75 0.75],'LineWidth',w);
        hold on
        plot(Leks,Skews,'b','LineWidth',w);%modified regression 
        hold off
        %from digitized line black in color
        hold on
        plot(Leks,W_O_skews,':k','LineWidth',w);%reported regression
        %black line
        hold off
        hold on
        scatter(1:7,W_O_skew_line_predictions,'filled','b');%extracted predicted points
        hold off
        xlim(x_limits)
        ylim(y_limits)
        xticks(x_ticks)
        yticks(y_ticks)
        %xticklabels(X_tick_labels)
        set(Skew_extractions,'Fontsize',15)
        title("B",'FontSize',24)
        title ( 'B' , 'position' , titles_spot)
        %ylabel(y_axis_tit,'FontSize',17)
        xlabel(x_axis_tit,'FontSize',18)
        set(Skew_extractions,'box','off','TickDir','out','yticklabel',...
            num2str(get(gca,'ytick')','%.1f'))%set axis to have two decimal
        %points
        set(Skew_extractions,'Position',[0.5 0.62 0.20 0.2978])
        
        
 
end
 





