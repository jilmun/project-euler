# Problem 25: 1000-digit Fibonacci number

fib_n_1 <- 1
fib_n <- 1
fib.id <- 2

#.. store fib vals as digits arrarys
while(length(fib_n) < 1000) {
  tmp <- fib_n + c(rep(0,length(fib_n)-length(fib_n_1)), fib_n_1)
  fib_n_1 <- fib_n
  fib_n <- c(tmp%/%10, 0) + c(0, tmp%%10)
  if(fib_n[1] == 0) fib_n <- fib_n[-1]
  fib.id <- fib.id + 1
  fib_n
}
fib.id
