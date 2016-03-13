# Problem 5: Smallest multiple

arr <- 1:20
primes <- numeric(0)

#.. create prime factorization of array
while (sum(arr) > length(arr)) {
   newprime <- (arr[arr > 1])[1]
   primes[length(primes)+1] <- newprime
   arr[(arr %% newprime) == 0] <- arr[(arr %% newprime) == 0] / newprime
}

#.. result is product of primes
prod(primes)
