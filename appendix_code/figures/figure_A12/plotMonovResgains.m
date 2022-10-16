function SensMonoResGains = plotMonovResgains( )
%function for graphing the relationship between monopolization coefficient
%and resident rewards proportion of copulations in a co-display. 
MonoCoeff=getAllMonoCoeff();
MonoCoeff=MonoCoeff.';
ResGains = getAllMonoResGains( );
ResGains =ResGains.';
ind = isnan(ResGains) | isnan(MonoCoeff);%remove nan if any
ResGains(ind)=[];
MonoCoeff(ind)=[];
%regression
mdl=fitlm(MonoCoeff,ResGains);
newdata=predict(mdl,MonoCoeff);
%plot
y_Label="Resident co-display reward";
y_limits=[0 5];
x_limits=[0.25 1.00];
x_ticks=[0.25 0.50 0.75 1.00];
y_ticks=[1 2 3 4 5];
Title_plot="A";
Title_position=[0.15 5.2];
SensMonoResGains=subplot(2,2,1);
    scatter(MonoCoeff,ResGains);
    hold on 
    plot(MonoCoeff,newdata);
    hold off 
    ylabel(y_Label)
    xlim(x_limits)
    ylim(y_limits)
    xticks(x_ticks)
    yticks(y_ticks)
    set(SensMonoResGains,'FontSize',18)
    title('A', 'FontSize', 24);
    title (Title_plot, 'position' , Title_position)
    set(gca,'TickDir','out');
    set(gca,'xticklabel',num2str(get(gca,'xtick')','%.2f'))

    

end

