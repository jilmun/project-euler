# Problem 21: Amicable numbers

#.. set max number
maxval <- 9999

#.. function to calculate sum of divisors
sumdivs <- function(num) {
  
  # num is out of range (0, maxval)
  if (num==0 | num>maxval)
    return(0)
  
  # num is in range (0, maxval)
  else {
    divs <- 1:num
    divs <- divs[(num %% (1:num))==0]
    result <- sum(divs) - num
    
    # num is not amicable if sum of divisors is itself
    if (result != num)
      return(result)  
    else
      return(0)
  }
}

#.. check all numbers under 10,000
numarr1 <- 1:maxval
numdivs <- sapply(numarr1, sumdivs)
numarr2 <- sapply(numdivs, sumdivs)
sum(numarr1[numarr1==numarr2])
