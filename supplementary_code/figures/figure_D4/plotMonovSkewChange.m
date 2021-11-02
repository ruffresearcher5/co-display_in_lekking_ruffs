function SensMonoSkewChange = plotMonovSkewChange( )
%function for graphing the relationship between monopolization coefficient
%and the resulting resident mating skew caused by a co-display. 
%get model generated data
MonoCoeff=getAllMonoCoeff();
MonoCoeff=MonoCoeff.';
Skews = getAllMonoSkewChange();
Skews =Skews.';
ind = isnan(Skews) | isnan(MonoCoeff);%remove nan caused by no co-display
Skews(ind)=[];
MonoCoeff(ind)=[];
%regression
mdl=fitlm(MonoCoeff,Skews);
newdata=predict(mdl,MonoCoeff);
%plot
x_Label="Monopolization coefficient";
y_Label="Resident skew change";
y_limits=[-0.8 0.0];
x_limits=[0.2 1.0];
x_ticks=[0.25 0.50 0.75 1.00];
y_ticks=[-0.8 -0.60 -0.40 -0.20 0.0];
Title_plot="D";
Title_position=[0.15 0.08];
SensMonoSkewChange=subplot(2,2,4);
    scatter(MonoCoeff,Skews);
    hold on 
    plot(MonoCoeff, newdata)
    hold off
    ylabel(y_Label)
        xlabel(x_Label) 
    xlim(x_limits)
    ylim(y_limits)
    xticks(x_ticks)
    yticks(y_ticks)
    set(SensMonoSkewChange,'FontSize',18)
    title('D', 'FontSize', 24);
    title (Title_plot, 'position' , Title_position)
    set(gca,'TickDir','out');
    set(gca,'xticklabel',num2str(get(gca,'xtick')','%.2f'))

    

end

