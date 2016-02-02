# Problem 30: Digit fifth powers

9^5*7  # 413343
#.. sum of max 7 digit fifth power is only 6 digits,
#.. numbers we are looking for are at most 6 digits

check_num <- function(num) {
  if (num == sum(as.numeric(unlist(strsplit(as.character(num),"")))^5) )
    return(num)
  return(0)
}

#.. largest 6 digit fifth power sum is 9^5*6
sum(sapply(10:(9^5*6), check_num))
