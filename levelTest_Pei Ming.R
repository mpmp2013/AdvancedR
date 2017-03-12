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