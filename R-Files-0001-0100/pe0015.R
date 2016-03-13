# Problem 15: Lattice paths

#.. count of paths is pascal's triangles
#..
#..          1           # 0x0
#..        1   1
#..      1   2   1       # 1x1
#..    1   3   3   1
#..  1   4   6   4   1   # 2x2

#.. number of paths is equivalent to [2*n choose n]
#..  = (2n)! / [ n! * (2n-n)! ]
path_count <- function(n) {
  return(factorial(2*n)/factorial(n)/factorial(n))
}

path_count(20)
