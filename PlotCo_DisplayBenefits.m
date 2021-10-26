function CDB = PlotCo_DisplayBenefits()
%This is a script for displaying the co-display benefits
%for each lek under each fitness loss scenarios for the Tolliver et al. 
%model of resident and satellite cooperation. 
%Define hypotheses
Hn="Null";
Hu="UP";
Hs="Sk";
Hrs="RSk";
%Define calculation matrix
Fsandrmat=zeros(4,7);
 
Leks=1:7;
 
%Calculate Fs by Hypothesis
%H0
Fsandrmat(1:7,1)=[Co_dis_benefit(1,Hn),Co_dis_benefit(2,Hn),...
    Co_dis_benefit(3,Hn),Co_dis_benefit(4,Hn),...
    Co_dis_benefit(5,Hn),Co_dis_benefit(6,Hn),...
    Co_dis_benefit(7,Hn)];
%H1
Fsandrmat(1:7,2)=[Co_dis_benefit(1,Hu),Co_dis_benefit(2,Hu),...
    Co_dis_benefit(3,Hu),Co_dis_benefit(4,Hu),...
    Co_dis_benefit(5,Hu),Co_dis_benefit(6,Hu),...
    Co_dis_benefit(7,Hu)];
%H2
Fsandrmat(1:7,3)=[Co_dis_benefit(1,Hs),Co_dis_benefit(2,Hs),...
    Co_dis_benefit(3,Hs),Co_dis_benefit(4,Hs),...
    Co_dis_benefit(5,Hs),Co_dis_benefit(6,Hs),...
    Co_dis_benefit(7,Hs)];
%H3
Fsandrmat(1:7,4)=[Co_dis_benefit(1,Hrs),Co_dis_benefit(2,Hrs),...
    Co_dis_benefit(3,Hrs),Co_dis_benefit(4,Hrs),...
    Co_dis_benefit(5,Hrs),Co_dis_benefit(6,Hrs),...
    Co_dis_benefit(7,Hrs)];
 
 
%Make a figure
CDB = bar(Leks,Fsandrmat);

xlabel("Residents/lek")
ylabel("Co-display benefit (copulations)")
xlim([0 8])
ylim([0 6])
xticks([0.89 2.89 4.89 6.89])%centers ticks on middle bar
yticks([0 3 6])
CDB(1).FaceColor = [0 0 0];
CDB(2).FaceColor = [0.4940 0.1840 0.5560];
CDB(3).FaceColor = [0.9290 0.6940 0.1250];
xticks([0.89 2.89 4.89 6.89])
set(gca,'FontSize',18)
set(gca,'XTickLabel',{'1' '3' '5' '7'});
set(gca,'box','off')%must use gca because it is the figure call that has 
%this property
set(gca,'TickDir','out')%see above comment
legend('Null','Uniform Proportion', 'Skew', 'Reverse skew')
legend boxoff 
 
 
end
 
 
 





