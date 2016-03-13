# Problem 20: Factorial digit sum

#.. takes two digit vectors and returns product vector
mult_digits <- function(mydig1, mydig2) {
  
  # define product vector
  sumdig <- 0
  
  # loop through each digit in mydig2
  for(i in 1:length(mydig2)) {
    sumdig.tmp <- mydig1 * mydig2[length(mydig2)-i+1]
    
    # shift product 1 to the left for each digit and add
    sumdig.tmp <- c(sumdig.tmp, rep(0, i-1))
    sumdig <- c(rep(0,length(sumdig.tmp)-length(sumdig)),sumdig) + sumdig.tmp
    
    # loop while digit value needs carry
    while(!all(sumdig < 10)) {
      carry <- c(sumdig %/% 10, 0)
      if(carry[1]==0) carry <- carry[-1]
      sumdig <- c(rep(0,length(carry)-length(sumdig)), sumdig%%10) + carry
    }
  }
  return(sumdig)
}

#.. calculate factorial vector `myprod`
myprod <- 1
for(n in 2:100) {
  num.vect <- as.integer(unlist(strsplit(as.character(n), "")))
  myprod <- mult_digits(myprod, num.vect)
}
sum(myprod)
