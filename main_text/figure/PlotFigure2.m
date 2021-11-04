%%%%%Script for ploting supplementary figure 2%%%%%%
Figure_2=figure;
    Plot_A=plotResGr_main_text();
    Plot_B=plotSatGs_main_text();
    Plot_C=plotSatProportion_main_text();
    Plot_D=PlotSkewMeanSat( );

 %%%Note that to produce the graph from the presented in the supplementary
    %the plot edit should be used to change the colormaps of the subplots.
    %The subplots should be changed by eliminating the
    %markers at all the indicies with the colormap editor then placing
    %markers at the follwing locations with the given colors: 
    
    %%%%resident reward subplot colormaps: Index 1 --> #808080, 
    %Index 19 --> #d4d4d4, Index 22 --> white, Index 26 --> #d9faff, 
    %Index 33 --> #adf5ff, Index 44 --> #73bdf5, Index 49 --> #2487bd, 
    %Index  54 --> #0070a3, Index 59 --> #00406e, Index 64 --> #000326
    
    %%%%satellite reward subplots colormaps: Index 1 --> white,
    %Index 4 --> #ffebed, Index 16 --> #ffccd1, Index 32 --> #bf8282,
    %Index 40 --> #d63d4f, Index 48 --> #960024, Index 56 --> #78000f, 
    %Index 64 --> #1c0000
    
    %%%%satellite proportion subplot colormaps: Index 1 --> #000326,
    %Index 4 --> #00406e, Index 8 --> #0070a3, Index 12 --> #2487bd,
    %Index 16 --> #73bdf5, Index 24 --> #adf5ff, Index 30 --> #d9faff,
    %Index 32 --> white, Index 35 --> #ffebed, Index 40 --> #ffccd1,
    %Index 48 --> #bf8282, %Index 52 --> #d63d4f, Index 56 --> #960024,
    %Index 60 --> #78000f, Index 64 --> #1c0000
