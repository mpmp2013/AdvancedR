y <- c(1,0,0,1,1,1,0,1,1)
findNum <- function(y,x,l){
  n <- length(y)
  Num <- NULL
  for(i in 1:(n-l+1)){
    if(all( y[i:(i+l-1)] == x))
      Num <- c(Num,i)
  }
  return(Num)
}
findNum(y,1,2)

#1.5 hour


raw <- read.delim("data/weather.txt",check.names = F, na.strings = ".")
library(reshape2)
newdata <- melt(raw, id.vars= names(raw)[1:3], variable.name = "day",value.name = "temp")
newdata2 = na.omit(newdata)
newdata3 <- dcast(newdata2,year+month+day~element)
dif <- newdata3$tmax - newdata3$tmin
dif

#45 min

library(hflights)
str(hflights)
library(plyr)
Delaydata <- ddply(hflights,c("UniqueCarrier","Month"),summarise,
                   Qua = quantile(ArrDelay,0.1,na.rm=TRUE)
                   )
Delaydata2 <- ddply(Delaydata,c("UniqueCarrier"),summarise,
                    Mean = mean(Qua)
                    )
Delaydata2

#1.5 Hour