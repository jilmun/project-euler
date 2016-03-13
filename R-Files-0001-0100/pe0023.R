# Problem 23: Non-abundant sums

#.. function to check if num is an abundant number
check_abundant <- function(num){
  if (num < 2)
    return(FALSE)
  div <- 1:(num-1)
  div <- div[num %% div == 0]
  if (sum(div) > num) 
    return(TRUE)
  else
    return(FALSE)
}

#.. find all abundant numbers up to 28123
abundantvals <- sapply(1:28123, check_abundant)
abundantvals <- (1:28123)[abundantvals]

#.. find all sums of abundant numbers
combos <- combn(length(abundantvals), 2)
abundantsums <- abundantvals[combos[1,]] + abundantvals[combos[2,]]
abundantsums <- c(abundantsums, abundantvals + abundantvals)
abundantsums <- sort(unique(abundantsums[abundantsums <= 28123]))

#.. results are non sums of abundant numbers
results <- (1:28123)[!(1:28123) %in% abundantsums]
sum(results)
