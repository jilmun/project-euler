# Problem 32: Pandigital products
library(dplyr)  # to use piping

#.. create permutation matrix
fn_permute <- function(n) {
  if (n == 1)
    return(matrix(n))
  sp <- fn_permute(n-1)
  p <- nrow(sp)
  A <- matrix(nrow=n*p, ncol=n)  # rows=n!
  for (i in 1:n)
    A[(i-1)*p+1:p,] <- cbind(i, sp+(sp>=i))
  return(A)
}

#.. find pandigital products
n <- 9  # digits are 1 through n
perms <- fn_permute(n)
pandigitalprod <- numeric(0)
id.eq <- ceiling(n/2)  # for 1:9, prod must be 4 digits
for (id.row in 1:nrow(perms)) {
  for (id.mult in 1:ceiling(id.eq/2)) {
    mult1 <- perms[id.row, 1:(id.mult)] %>% paste(.,collapse="") %>% as.numeric()
    mult2 <- perms[id.row, (id.mult+1):id.eq] %>% paste(.,collapse="") %>% as.numeric()
    prod <- perms[id.row, (id.eq+1):n] %>% paste(.,collapse="") %>% as.numeric()
    if (mult1*mult2 == prod) {
      pandigitalprod <- c(pandigitalprod, prod)
      message(paste(mult1, "x", mult2, "=", prod))
    }
  }
}
sum(unique(pandigitalprod))
