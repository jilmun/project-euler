# Problem 4: Largest palindrome product

#.. define check palindrome function
isPalindrome <- function(n) {
  n <- as.character(n)
  n <- unlist(strsplit(n, ""))
  len <- floor(length(n)/2)
  result <- all(n[1:len] == n[length(n):(length(n)-len+1)])
  return(result)
}

#.. calculate all products from two 3-digit numbers
prods <- numeric(0)
for (i in 100:999) {
  prods <- c(prods, (i:999)*i)
}

#.. return max palindrome
max(prods[sapply(prods, isPalindrome)])
