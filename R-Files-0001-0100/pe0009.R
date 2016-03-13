# Problem 9: Special Pythagorean triplet

#.. initialize values
a <- 0
b <- 0
found <- FALSE
while(!found & a <997) {
  a <- a + 1
  b <- a
  while(!found & b <998) {
    b <- b + 1
    c <- sqrt(a^2 + b^2)
    found <- (1000-a-b == c)
  }
}

a*b*c
