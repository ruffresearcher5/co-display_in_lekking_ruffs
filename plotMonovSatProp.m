function SensMonoSatProp = plotMonovSatProp()
%function for graphing the relationship between monopolization coefficient
%and Satellite proportion of copulations in a co-display. 
%get model generated data
MonoCoeff=getAllMonoCoeff();
MonoCoeff=MonoCoeff.';
SatProp = getAllMonoSatProp();
SatProp =SatProp.';
ind = isnan(SatProp) | isnan(MonoCoeff);%remove nan caused by no co-display
SatProp(ind)=[];
MonoCoeff(ind)=[];
%regression
mdl=fitlm(MonoCoeff,SatProp);
newdata=predict(mdl,MonoCoeff);
%plot
x_Label="Monopolization coefficient";
y_Label="Satellite proportion";
y_limits=[0.0 0.75];
x_limits=[0.2 1.00];
x_ticks=[0.25 0.50 0.75 1.00];
y_ticks=[0.00 0.25 0.50 0.75];
Title_plot="C";
Title_position=[0.15 0.82];
SensMonoSatProp=subplot(2,2,3);
    scatter(MonoCoeff,SatProp);
    hold on 
    plot(MonoCoeff, newdata)
    hold off
    ylabel(y_Label)
        xlabel(x_Label) 
    xlim(x_limits)
    ylim(y_limits)
    xticks(x_ticks)
    yticks(y_ticks)
    set(SensMonoSatProp,'FontSize',18)
    title('C', 'FontSize', 24);
    title (Title_plot, 'position' , Title_position)
    set(gca,'TickDir','out');
    set(gca,'xticklabel',num2str(get(gca,'xtick')','%.2f'))
    set(gca,'yticklabel',num2str(get(gca,'ytick')','%.2f'))
    

end

