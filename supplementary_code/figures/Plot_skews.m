function plotA = Plot_skews()
%%%%%Subplot function for supplementary figure B2_A for manuscript with 
% running head: Co-display in lekking ruff.%%%%%
%Plots estimated skew regressions from Widemo and Owens (1995): modified 
%regression from digitized reported line, extracted predictions from 
%reported line, and reported regression. 

%Set lek range
Leks=1:7;

%modified regression from digitized line
Skews=[round(Skew_of_lek(1),2),Skew_of_lek(2),Skew_of_lek(3), ...
    Skew_of_lek(4),Skew_of_lek(5),Skew_of_lek(6),Skew_of_lek(7)];
%reported regression
W_O_skews=[W_O_report_skew(1),W_O_report_skew(2),...
    W_O_report_skew(3), W_O_report_skew(4),W_O_report_skew(5)...
    W_O_report_skew(6),W_O_report_skew(7)];
%extracted predictions from reported lines
W_O_skew_line_predictions=[1,0.98,0.94,0.89,0.80,0.71,0.64];

w=2;
x_limits=[0 8];
y_limits=[0 1.0];
x_ticks=[1 3 5 7];
y_ticks=[0.00 0.25 0.50 0.75 1.00];
titles_spot=[-1.5 1.01];
x_axis_tit="Lek size (Residents/lek)";
y_axis_tit={"\alpha resident"; "proportion of copulations"};
%plot relationships
plotA=subplot(2,2,1);    
        plot(Leks,Skews,'k','LineWidth',w);%modified regression 
        %from digitized line black in color
        hold on
        plot(Leks,W_O_skews,':b','LineWidth',w);%reported regression
        %black line
        hold off
        hold on
        scatter(Leks,W_O_skew_line_predictions,'filled');%extracted predicted points
        hold off
        xlim(x_limits)
        ylim(y_limits)
        xticks(x_ticks)
        yticks(y_ticks)
        set(plotA,'Fontsize',15)
        title("A",'FontSize',24)
        title ( 'A' , 'position' , titles_spot)
        ylabel(y_axis_tit,'FontSize',17)
        xlabel(x_axis_tit,'FontSize',18)
        set(plotA,'box','off','TickDir','out','yticklabel',...
            num2str(get(gca,'ytick')','%.2f'))%set axis to have two decimal
        %points
        set(plotA,'Position',[0.255 0.6 0.2 0.3])
        
        

end

