function SensMonoSatGains = plotMonovSatgains( )
%function for graphing the relationship between monopolization coefficient
%and Satellite rewards in a co-display. 
%get model generated data
MonoCoeff=getAllMonoCoeff();
MonoCoeff=MonoCoeff.';
SatGains = getAllMonoSatGains();
SatGains =SatGains.';
ind = isnan(SatGains) | isnan(MonoCoeff);%remove nan caused by no co-display
SatGains(ind)=[];
MonoCoeff(ind)=[];
%regression
mdl=fitlm(MonoCoeff,SatGains);
newdata=predict(mdl,MonoCoeff);

%plot
y_Label="Satellite co-display reward";
y_limits=[0 5];
x_limits=[0.25 1.00];
x_ticks=[0.25 0.50 0.75 1.00];
y_ticks=[1 2 3 4 5];
Title_plot="B";
Title_position=[0.15 5.2];
SensMonoSatGains=subplot(2,2,2);
    scatter(MonoCoeff,SatGains);
    hold on 
    plot(MonoCoeff, newdata)
    hold off
    ylabel(y_Label)
    xlim(x_limits)
    ylim(y_limits)
    xticks(x_ticks)
    yticks(y_ticks)
    set(SensMonoSatGains,'FontSize',18)
    title('A', 'FontSize', 24);
    title (Title_plot, 'position' , Title_position)
    set(gca,'TickDir','out');
    set(gca,'xticklabel',num2str(get(gca,'xtick')','%.2f'))

    

end

