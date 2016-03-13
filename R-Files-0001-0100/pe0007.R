# Problem 7: 10001st prime
#.. primlist from 'schoolmath' package is incorrect
myprimes <- 2
i <- myprimes
while (length(myprimes) < 10001) {
  i <- i + 1
  if (all(i %% myprimes != 0))
    myprimes <- c(myprimes, i)
}
myprimes[10001]
