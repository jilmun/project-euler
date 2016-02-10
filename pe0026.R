# Problem 26: Reciprocal cycles

#.. returns cycle length of unit fraction
find_cycle <- function(denom) {
  numerator <- 10
  r.array <- 1
  while (TRUE) {
    r <- numerator %% denom
    if (r == 0)
      return(0)
    if (r %in% r.array)
      return(length(r.array) - which(r.array==r) + 1)
    r.array <- c(r.array, r)
    numerator <- r * 10
    while (r!=0 & numerator<denom)
      numerator <- numerator * 10
  }
}

d.cyclelen <- sapply(1:999, find_cycle)
which.max(d.cyclelen)
