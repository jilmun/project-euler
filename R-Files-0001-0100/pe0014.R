# Problem 14: Longest Collatz sequence
#.. total runtime approx 5 minutes

#.. generate Collatz sequence and return length
collatz_seq <- function(n) {
  seq <- n
  while (n != 1) {
    if (n %% 2 == 0)
      n <- n / 2
    else
      n <- 3 * n + 1
    seq <- c(seq, n)  
  }
  return(length(seq))
}

#ptm <- proc.time()
which.max(sapply(1:(1000000-1), collatz_seq))
#proc.time() - ptm  # runtime output
