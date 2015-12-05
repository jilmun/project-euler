# Problem 10: Summation of primes
#.. not optimized
#.. took almost 20 mins to run 

# ptm <- proc.time()  # capture runtime
limit <- 2000000    # test with 10, result=17
arr <- 2:(limit-1)  # primes start at 2
primes <- numeric(0)

#.. find primes in array
while (length(arr) > 0) {
  primes <- c(primes, arr[1])
  arr <- arr[arr %% primes[length(primes)] != 0]
}

#.. result is sum of primes
sum(primes)
# proc.time() - ptm  # runtime