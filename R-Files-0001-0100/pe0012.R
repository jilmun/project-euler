# Problem 12: Highly divisible triangular number

#.. use factorize from `gmp`
library(gmp)

#.. initialize variables
trinum <- 0
addme <- 1
found <- FALSE
divs <- 1

#.. main loop
#.. brute force: `sum((trinum %% 1:trinum) == 0) > 500`
#.... took > 30 minutes and did not finish
#.. optimized with gmp prime `factorize`
#.... algorithm finishes in seconds
#.... i.e. 120 = 2^3*3^1*5^1, divisors = (3+1)*(1+1)*(1+1)
while(!found) {
  trinum <- trinum + addme
  addme <- addme + 1
  prims <- factorize(trinum)
  if(length(prims) > 1) {
    mydivs <- 1
    uprims <- unique(prims)
    for(i in seq_along(uprims)) {
      mydivs <- mydivs * (sum(uprims[i] == prims) + 1)
    }
    if(mydivs > divs) {
      divs <- mydivs
      print(paste0(trinum, ":", divs))
      flush.console()  # force print
    }
    if(divs > 500)
      found <- TRUE
  }
}

trinum
