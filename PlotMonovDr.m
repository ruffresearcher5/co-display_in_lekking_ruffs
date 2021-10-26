%%%%%Plot Mr and Dr togather%%%%%
Mr_vec=getAllMonoCoeffwithVariableDr();
Dr_vec=getAllDisRiskCoeff();
x_ticks=[0.00 0.25 0.50 0.75 1.00];
y_ticks=[0.40 0.50 0.60 0.70 0.80 0.90];
for i = 1:49
 if i <=147
   plot_lines(Mr_vec,Dr_vec,i)
   hold on
  else
   hold off
  end
end
hold on
scatter(Dr_vec(1:49),Mr_vec(1:49),'filled')
hold on
hold off
hold on
scatter(Dr_vec(50:98),Mr_vec(50:98),'filled')
hold off
hold on
scatter(Dr_vec(99:147),Mr_vec(99:147),'filled')
hold off
hold on
scatter(Dr_vec(99:147),Mr_vec(99:147),'filled');
box off
set(gca,'TickDir','out','FontSize',18);
xticks(x_ticks)
yticks(y_ticks)
ylim([0.40 0.90])
xlim([0.00 1.00])
xlabel('Disruption risk')
ylabel('Monopolization coefficient')
hold off
function plot_lines(Mr_vec,Dr_vec,starting_num)
    Mr_sub_vec=[Mr_vec(1,starting_num) Mr_vec(1,starting_num+49)...
        Mr_vec(1,starting_num+98)];
    Dr_sub_vec=[Dr_vec(1,starting_num) Dr_vec(1,starting_num+49)...
        Dr_vec(1,starting_num+98)];
    plot(Dr_sub_vec,Mr_sub_vec,'color','b');
end




