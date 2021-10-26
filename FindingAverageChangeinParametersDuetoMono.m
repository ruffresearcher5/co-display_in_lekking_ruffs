%find average change in parameters due to monopilization coefficent
%Resident gains
MonoCoeff=getAllMonoCoeff();
MonoCoeff=MonoCoeff.';
ResGains = getAllMonoResGains( );
ResGains =ResGains.';
ind = isnan(ResGains) | isnan(MonoCoeff);%remove nan if any
ResGains(ind)=[];
MonoCoeff(ind)=[];
%regression
mdlres=fitlm(MonoCoeff,ResGains);
sloperes=mdlres.Coefficients.Estimate(2);
%average change per 0.10 change in Mr
changeRes=sloperes*0.10;
display(changeRes)
    
%Satellite gains
MonoCoeff=getAllMonoCoeff();
MonoCoeff=MonoCoeff.';
SatGains = getAllMonoSatGains();
SatGains =SatGains.';
ind = isnan(SatGains) | isnan(MonoCoeff);%remove nan caused by no co-display
SatGains(ind)=[];
MonoCoeff(ind)=[];
%regression
mdlsat=fitlm(MonoCoeff,SatGains);
slopesat=mdlsat.Coefficients.Estimate(2);
%average change per 0.10 change in Mr
changeSat=slopesat*0.10;
display(changeSat)

%Satellite proportion
MonoCoeff=getAllMonoCoeff();
MonoCoeff=MonoCoeff.';
SatProp = getAllMonoSatProp();
SatProp =SatProp.';
ind = isnan(SatProp) | isnan(MonoCoeff);%remove nan caused by no co-display
SatProp(ind)=[];
MonoCoeff(ind)=[];
%regression
mdlprop=fitlm(MonoCoeff,SatProp);
slopeprop=mdlprop.Coefficients.Estimate(2);
%average change per 0.10 change in Mr
changeProp=slopeprop*0.10;
display(changeProp)

%skew
MonoCoeff=getAllMonoCoeff();
MonoCoeff=MonoCoeff.';
Skews = getAllMonoSkewChange();
Skews =Skews.';
ind = isnan(Skews) | isnan(MonoCoeff);%remove nan caused by no co-display
Skews(ind)=[];
MonoCoeff(ind)=[];
%regression
mdlskew=fitlm(MonoCoeff,Skews);
slopeskew=mdlskew.Coefficients.Estimate(2);
%average change per 0.10 change in Mr
changeskew=slopeskew*0.10;
display(changeskew)
