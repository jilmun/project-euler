# Problem 16: Power digit sum

#.. create digits array for 2^pow
mult2 <- function(pow) {
  arr <- c(rep(0, 999), 2)
  while (pow > 1) {
    carry <- 0
    for (i in length(arr):1){
      val <- arr[i] * 2
      arr[i] <- val %% 10 + carry
      carry <- val %/% 10
    }
    pow <- pow - 1
  }
  return(arr)
}

sum(mult2(1000))
