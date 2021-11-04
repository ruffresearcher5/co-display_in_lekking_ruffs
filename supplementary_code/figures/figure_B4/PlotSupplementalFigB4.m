function CDB = PlotSupplementalFigB4()
%This is a script for displaying the co-display benefits
%for each lek under each fitness loss scenarios due to co-display. 
%Define hypotheses
hn="Null";
hu="UP";
hs="Sk";
hrs="RSk";
%Define calculation matrix
Fsandrmat=zeros(4,7);
 
Leks=1:7;
 
%Calculate Fs by Hypothesis
%H0
Fsandrmat(1:7,1)=[Co_dis_benefit(1,hn),Co_dis_benefit(2,hn),...
    Co_dis_benefit(3,hn),Co_dis_benefit(4,hn),...
    Co_dis_benefit(5,hn),Co_dis_benefit(6,hn),...
    Co_dis_benefit(7,hn)];
%H1
Fsandrmat(1:7,2)=[Co_dis_benefit(1,hu),Co_dis_benefit(2,hu),...
    Co_dis_benefit(3,hu),Co_dis_benefit(4,hu),...
    Co_dis_benefit(5,hu),Co_dis_benefit(6,hu),...
    Co_dis_benefit(7,hu)];
%H2
Fsandrmat(1:7,3)=[Co_dis_benefit(1,hs),Co_dis_benefit(2,hs),...
    Co_dis_benefit(3,hs),Co_dis_benefit(4,hs),...
    Co_dis_benefit(5,hs),Co_dis_benefit(6,hs),...
    Co_dis_benefit(7,hs)];
%H3
Fsandrmat(1:7,4)=[Co_dis_benefit(1,hrs),Co_dis_benefit(2,hrs),...
    Co_dis_benefit(3,hrs),Co_dis_benefit(4,hrs),...
    Co_dis_benefit(5,hrs),Co_dis_benefit(6,hrs),...
    Co_dis_benefit(7,hrs)];
 
 
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
 
 
 





