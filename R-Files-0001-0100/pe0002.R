# Problem 2: Even Fibonacci numbers

#.. generate sequence under 4m
fib <- numeric(0)
fib[1] <- 1
fib[2] <- 2
index <- 3
tmp <- fib[1] + fib[2]
while (tmp < 4000000) {
  fib[index] <- tmp 
  tmp <- fib[index] + fib[index-1]
  index <- index + 1
}

#.. sum even values
sum(fib[fib%%2 == 0])
