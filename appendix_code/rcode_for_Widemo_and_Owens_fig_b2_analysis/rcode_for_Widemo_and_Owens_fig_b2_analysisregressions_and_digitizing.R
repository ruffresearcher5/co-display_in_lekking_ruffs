rske<-choose.files()
png(rske)

library(digitize)
rskedata<-digitize(rske)#follow instructions, make 50 points along the trend line
rskem=nls(y~a*(b^x),data = rskedata,start=list(a=1,b=0.8))
summary(rskem)
skewp=predict(rskem,newdata=c(1:10))
plot(skewp,lines)
skewp
rskedata[1:4,2]<-1
rskedata
rskem=nls(y~a-exp(b*x),data = rskedata,start=list(a=1,b=0.8))#negative exponential regression of digitized trend line
summary(rskem)#parameter estimates for regression, we adjusted the intercept estimate so that the skew at a lek size of one would be one
rskelm=lm(y~x^2,data = rskedata)
