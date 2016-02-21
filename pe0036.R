# Problem 36: Double-base palindromes

isPalindrome <- function(n) {
  if (n < 10) return(TRUE)  # n must be positive
  n <- unlist(strsplit(as.character(n), ""))
  len <- floor(length(n)/2)
  result <- all(n[1:len] == n[length(n):(length(n)-len+1)])
  return(result)
}
isPalidrome_NewBase <- function(n.val, base.new) {
  len <- 1
  while (base.new^len <= n.val) len <- len + 1
  if (len == 1) return(TRUE)
  n <- numeric(0)
  for (i in len:1) {
    n <- c(n, n.val %/% base.new^(i-1))
    n.val <- n.val %% base.new^(i-1)
  }
  result <- all(n[1:floor(len/2)] == n[len:(len-floor(len/2)+1)])
  return(result)
}
nums <- 1:1000000
nums.pali10 <- nums[sapply(nums, isPalindrome)]
sum(nums.pali10[sapply(nums.pali10, isPalidrome_NewBase, 2)])
