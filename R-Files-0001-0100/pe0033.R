# Problem 33: Digit cancelling fractions

isCurious <- function(n, d) {  # assume n,d are two digits
  if (n >= d) return(FALSE)
  n.dig <- as.numeric(unlist(strsplit(as.character(n),"")))
  d.dig <- as.numeric(unlist(strsplit(as.character(d),"")))
  if (n.dig[2]==0 & d.dig[2]==0) return(FALSE)  # trivial
  if (sum(d.dig %in% n.dig)!=1 | sum(n.dig %in% d.dig)!=1) 
    return(FALSE)
  if (n.dig[!n.dig %in% d.dig]/d.dig[!d.dig %in% n.dig] == n/d)
    return(TRUE)
  else
    return(FALSE)
}

denom <- numeric(0)
numer <- numeric(0)
for (i.denom in 11:99) {
  for (i.numer in 10:(i.denom-1)) {
    if (isCurious(i.numer, i.denom)) {
      denom <- c(denom, i.denom)
      numer <- c(numer, i.numer)
    }
  }
}

require(MASS)
fractions(prod(numer)/prod(denom))  # simplified fraction
