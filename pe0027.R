# Problem 27: Quadratic primes

#.. check if num is prime
isPrime <- function(num) {
  if (num < 2) return(FALSE)
  if (num == 2) return(TRUE)
  if (sum((num %% (2:(num-1)))>0) == (num-2))
    return(TRUE)
  else
    return(FALSE)
}

#.. initialize variables
all.a <- -999:999
all.b <- (1:999)[sapply(1:999, isPrime)]  # b must be prime if n=0 is prime
max.a <- all.a[1]
max.b <- all.b[1]
max.n <- 1

for (a in all.a) {
  for (b in all.b) {
    n <- 0
    stillPrime <- TRUE
    while (stillPrime) {
      stillPrime <- isPrime(n^2 + a*n + b)
      n <- n + 1
    }
    if (n > max.n) {
      max.n <- n
      max.a <- a
      max.b <- b
    }
  }
}
max.a * max.b