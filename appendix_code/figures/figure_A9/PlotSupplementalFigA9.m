%%%%%Script for ploting supplementary figure D1%%%%%%

Figure_D1=figure;
    Plot_A=plotMonoCoeff_sens("strong");
    Plot_B=plotMonoCoeff_sens("medium");
    Plot_C=plotMonoCoeff_sens("weak");
    Plot_D=plotDisrupRisk_sens("low");
    Plot_E=plotDisrupRisk_sens("medium");
    Plot_F=plotDisrupRisk_sens("high");
    
 %%%Note that to produce the graph presented in the supplementary
    %the plot edit should be used to change the colormaps of the subplots.
    %The subplots should be changed by eliminating the
    %markers at all the indicies with the colormap editor then placing
    %markers at the follwing locations with the given colors: 
    
    %Index 1 --> white, Index 6 --> #d9faff, Index 16 --> #adf5ff,
    %Index 32 --> #73bdf5, Index 40 --> #2487bd, Index 48 --> #0070a3
    %Index 56 --> #00406e, Index 64 --> #000326
