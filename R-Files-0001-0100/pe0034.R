# Problem 34: Digit factorials
isCurious <- function(n) {
  n.str <- as.numeric(unlist(strsplit(as.character(n), "")))
  if (sum(sapply(n.str, factorial)) == n) {
    message(n); return(TRUE)
  } else {return(FALSE)}
}

#.. can't be more than 7 digits, 7*9! is 7 digits
nums <- 10:(7*factorial(9))
system.time(nums.curious <- nums[sapply(nums, isCurious)])
sum(nums.curious)
