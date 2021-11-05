%%%%%Script for ploting supplementary figure B2. Resident copulations 
%during solo display%%%

Figure_B2=figure;
    Plot_A=plotResCopWOSat_Null();
    Plot_B=plotResCopWOSat_UP();
    Plot_C=plotResCopWOSat_Sk();
    Plot_D=plotResCopsWOSat_RSk();

    C_Bticks=[0.0 2.0 4.0 6.0 8.0];
    hr1 = colorbar('Ticks',[],'Position',[0.67 0.15 0.02 0.79],...
            'YAxisLocation','right','XTick', C_Bticks);
        hr1.Limits = [0.0 8.0];
    text(9.1,4.1,0,{'Resident copulations when displaying alone'},...
            'Color','black','FontSize',18,'Rotation',90)
        set(hr1,'TickDir','out','xticklabel',num2str(get(hr1,'xtick')',...
            '%.2f'))
 %%%Note that to produce the graph from the presented in the supplementary
    %the plot edit should be used to change the colormaps of the subplots.
    %The subplots should be changed by eliminating the
    %markers at all the indicies with the colormap editor then placing
    %markers at the follwing locations with the given colors: 
    %Index 1 --> white, Index 6 -->  #d9faff, Index 16 -->  #adf5ff,
    %Index 32 -->  #73bdf5, Index 40 -->  #2487bd, Index 48 -->  #0070a3
    %Index 56 -->  #00406e, Index 64 -->  #000326
