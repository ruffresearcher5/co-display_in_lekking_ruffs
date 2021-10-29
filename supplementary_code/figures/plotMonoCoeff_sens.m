function MrPlot = plotMonoCoeff_sens(Sat_Com_ab)
%%%%%Subplot function for supplementary figure C1_A,B,C%%%%%
%Plot of assumed function for resident monopolization coefficients. 
 
%matrix for predicted values from function
MatMono=zeros(7,7);
%competition amoung residents
Comp_level="medium";
%Resident monopolization coefficients by lek size
%L=1
MatMono(1:7,1)=[Mono_coeff(1,1,Sat_Com_ab,Comp_level),...
    nan,nan,nan,nan,nan,nan];
%L=2
MatMono(1:7,2)=[Mono_coeff(2,1,Sat_Com_ab,Comp_level),...
    Mono_coeff(2,2,Sat_Com_ab,Comp_level),nan,nan,nan,nan,nan];
%L=3
MatMono(1:7,3)=[Mono_coeff(3,1,Sat_Com_ab,Comp_level),...
    Mono_coeff(3,2,Sat_Com_ab,Comp_level),...
    Mono_coeff(3,3,Sat_Com_ab,Comp_level),...
    nan,nan,nan,nan];
%L=4
MatMono(1:7,4)=[Mono_coeff(4,1,Sat_Com_ab,Comp_level),...
    Mono_coeff(4,2,Sat_Com_ab,Comp_level),...
    Mono_coeff(4,3,Sat_Com_ab,Comp_level),...
    Mono_coeff(4,4,Sat_Com_ab,Comp_level),nan,nan,nan];
%L=5
MatMono(1:7,5)=[Mono_coeff(5,1,Sat_Com_ab,Comp_level),...
    Mono_coeff(5,2,Sat_Com_ab,Comp_level),...
    Mono_coeff(5,3,Sat_Com_ab,Comp_level),...
    Mono_coeff(5,4,Sat_Com_ab,Comp_level),...
    Mono_coeff(5,5,Sat_Com_ab,Comp_level),nan,nan];
%L=6
MatMono(1:7,6)=[Mono_coeff(6,1,Sat_Com_ab,Comp_level),...
    Mono_coeff(6,2,Sat_Com_ab,Comp_level),...
    Mono_coeff(6,3,Sat_Com_ab,Comp_level),...
    Mono_coeff(6,4,Sat_Com_ab,Comp_level),...
    Mono_coeff(6,5,Sat_Com_ab,Comp_level),...
    Mono_coeff(6,6,Sat_Com_ab,Comp_level),nan];
%L=7
MatMono(1:7,7)=[Mono_coeff(7,1,Sat_Com_ab,Comp_level),...
    Mono_coeff(7,2,Sat_Com_ab,Comp_level),...
    Mono_coeff(7,3,Sat_Com_ab,Comp_level),...
    Mono_coeff(7,4,Sat_Com_ab,Comp_level),...
    Mono_coeff(7,5,Sat_Com_ab,Comp_level),...
    Mono_coeff(7,6,Sat_Com_ab,Comp_level),...
    Mono_coeff(7,7,Sat_Com_ab,Comp_level)];

X_axesLimits=[0 8];
Y_axesLimits=[0 8];
Y_and_X_ticks=[1 2 3 4 5 6 7];
Y_and_X_tick_labels=["" "" "" "" "" "" ""];
Title_position=[-1.5 0 1.1];
X_label="Lek size (Residents/lek)";
Y_label="Resident rank";
switch Sat_Com_ab
    case "strong"
        Title_plot="A"; 
        %Make a figure
        MrPlot=subplot(3,2,1);
                Cbar3(MatMono,MatMono)
                ylabel(Y_label,'Position',[-1,4,0],'Rotation',90)
                xlim(X_axesLimits)
                ylim(Y_axesLimits)
        xticks(Y_and_X_ticks)
        yticks(Y_and_X_ticks)
        xticklabels(Y_and_X_tick_labels)
        yticklabels(Y_and_X_tick_labels)
        %y tick labels
        text(-0.65,0.87,0,'\alpha','color',[0.0 0.0 0.0],'FontSize',13)
        text(-0.65,1.9,0,'\beta','color',[0.0 0.0 0.0],'FontSize',13)
        text(-0.65,2.87,0,'\gamma','color',[0.0 0.0 0.0],'FontSize',13)
        text(-0.6,3.9,0,'\delta','color',[0.0 0.0 0.0],'FontSize',13)
        text(-0.6,4.87,0,'\epsilon','color',[0.0 0.0 0.0]','FontSize',13)
        text(-0.6,5.9,0,'\zeta','color',[0.0 0.0 0.0],'FontSize',13)
        text(-0.65,6.87,0,'\eta','color',[0.0 0.0 0.0],'FontSize',13)
        %x tick labels
        text(0.78,8.4,0,'1','color',[0.0 0.0 0.0],'FontSize',12)
        %text(1.78,8.4,0,'2','color',[0.5 0.5 0.5],'FontSize',18)
        text(2.78,8.4,0,'3','color',[0.0 0.0 0.0],'FontSize',12)
        %text(3.78,8.4,0,'4','color',[0.5 0.5 0.5],'FontSize',18)
        text(4.78,8.4,0,'5','color',[0.0 0.0 0.0],'FontSize',12)
        %text(5.78,8.4,0,'6','color',[0.5 0.5 0.5],'FontSize',18)
        text(6.78,8.4,0,'7','color',[0.0 0.0 0.0],'FontSize',12)
                az = 0;
                el = 90;
                view(az, el);
                a = get(MrPlot,'XTickLabel'); 
                set(MrPlot,'XTickLabel',a,'Fontsize',12)
                title(Title_plot,'FontSize',24)
                title (Title_plot, 'position' , Title_position)   
                colormap(MrPlot,flipud(autumn));
                caxis manual
                caxis([0.0 1.0])
                set(MrPlot,'Position',[0.2000 0.7093 0.3347 0.2157])
                                   grid off
       set(MrPlot,'TickDir','out')
    case "medium"
        Title_plot="B"; 
        %Make a figure
        MrPlot=subplot(3,2,3);
                Cbar3(MatMono,MatMono)
                ylabel(Y_label,'Position',[-1,4,0],'Rotation',90)
                xlim(X_axesLimits)
                ylim(Y_axesLimits)
       xticks(Y_and_X_ticks)
        yticks(Y_and_X_ticks)
        xticklabels(Y_and_X_tick_labels)
        yticklabels(Y_and_X_tick_labels)
        %y tick labels
        text(-0.65,0.87,0,'\alpha','color',[0.0 0.0 0.0],'FontSize',13)
        text(-0.65,1.9,0,'\beta','color',[0.0 0.0 0.0],'FontSize',13)
        text(-0.65,2.87,0,'\gamma','color',[0.0 0.0 0.0],'FontSize',13)
        text(-0.6,3.9,0,'\delta','color',[0.0 0.0 0.0],'FontSize',13)
        text(-0.6,4.87,0,'\epsilon','color',[0.0 0.0 0.0]','FontSize',13)
        text(-0.6,5.9,0,'\zeta','color',[0.0 0.0 0.0],'FontSize',13)
        text(-0.65,6.87,0,'\eta','color',[0.0 0.0 0.0],'FontSize',13)
        %x tick labels
        text(0.78,8.4,0,'1','color',[0.0 0.0 0.0],'FontSize',12)
        %text(1.78,8.4,0,'2','color',[0.5 0.5 0.5],'FontSize',18)
        text(2.78,8.4,0,'3','color',[0.0 0.0 0.0],'FontSize',12)
        %text(3.78,8.4,0,'4','color',[0.5 0.5 0.5],'FontSize',18)
        text(4.78,8.4,0,'5','color',[0.0 0.0 0.0],'FontSize',12)
        %text(5.78,8.4,0,'6','color',[0.5 0.5 0.5],'FontSize',18)
        text(6.78,8.4,0,'7','color',[0.0 0.0 0.0],'FontSize',12)
                az = 0;
                el = 90;
                view(az, el);
                a = get(MrPlot,'XTickLabel'); 
                set(MrPlot,'XTickLabel',a,'Fontsize',12)
                title(Title_plot,'FontSize',24)
                title (Title_plot, 'position' , Title_position)   
                colormap(MrPlot,flipud(autumn));
                caxis manual
                caxis([0.0 1.0])
                set(MrPlot,'Position',[0.2000 0.4096 0.3347 0.2157])
                                   grid off
       set(MrPlot,'TickDir','out')
    case "weak"
        Title_plot="C"; 
        %Make a figure
        MrPlot=subplot(3,2,5);
                Cbar3(MatMono,MatMono)
                xlabel(X_label,'Position',[4.05,9,0])
                ylabel(Y_label,'Position',[-1,4,0],'Rotation',90)
                xlim(X_axesLimits)
                ylim(Y_axesLimits)
       xticks(Y_and_X_ticks)
        yticks(Y_and_X_ticks)
        xticklabels(Y_and_X_tick_labels)
        yticklabels(Y_and_X_tick_labels)
        %y tick labels
        text(-0.65,0.87,0,'\alpha','color',[0.0 0.0 0.0],'FontSize',13)
        text(-0.65,1.9,0,'\beta','color',[0.0 0.0 0.0],'FontSize',13)
        text(-0.65,2.87,0,'\gamma','color',[0.0 0.0 0.0],'FontSize',13)
        text(-0.6,3.9,0,'\delta','color',[0.0 0.0 0.0],'FontSize',13)
        text(-0.6,4.87,0,'\epsilon','color',[0.0 0.0 0.0]','FontSize',13)
        text(-0.6,5.9,0,'\zeta','color',[0.0 0.0 0.0],'FontSize',13)
        text(-0.65,6.87,0,'\eta','color',[0.0 0.0 0.0],'FontSize',13)
        %x tick labels
        text(0.78,8.4,0,'1','color',[0.0 0.0 0.0],'FontSize',12)
        %text(1.78,8.4,0,'2','color',[0.5 0.5 0.5],'FontSize',18)
        text(2.78,8.4,0,'3','color',[0.0 0.0 0.0],'FontSize',12)
        %text(3.78,8.4,0,'4','color',[0.5 0.5 0.5],'FontSize',18)
        text(4.78,8.4,0,'5','color',[0.0 0.0 0.0],'FontSize',12)
        %text(5.78,8.4,0,'6','color',[0.5 0.5 0.5],'FontSize',18)
        text(6.78,8.4,0,'7','color',[0.0 0.0 0.0],'FontSize',12)
                az = 0;
                el = 90;
                view(az, el);
                a = get(MrPlot,'XTickLabel'); 
                set(MrPlot,'XTickLabel',a,'Fontsize',12)
                title(Title_plot,'FontSize',24)
                title (Title_plot, 'position' , Title_position)   
                colormap(MrPlot,flipud(autumn));
                caxis manual
                caxis([0.0 1.0])
                set(MrPlot,'Position',[0.2000 0.1100 0.3347 0.2157])
                C_Bticks=[0.0 0.25 0.50 0.75 1.00];
                hr1 = colorbar('Ticks',[],'Position',...
                    [0.43 0.105 0.02 0.817],...
                    'YAxisLocation','right','XTick', C_Bticks);
                    hr1.Limits = [0.0 1.0];
                    text(8.7,-1.5,0,...
                        {'Monopolization coefficient'},...
                        'Color','black','FontSize',18,'Rotation',90)
                    set(hr1,'TickDir','out','xticklabel',...
                        num2str(get(hr1,'xtick')','%.2f'))
                           grid off
       set(MrPlot,'TickDir','out')
                    

end
   
