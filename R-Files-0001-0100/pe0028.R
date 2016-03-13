# Problem 28: Number spiral diagonals

n <- 1001
# upper right is 
#   1 = 1^2
#   9 = 3^2
#  25 = 5^2
#  49 = 7^2 ...
(up_right <- sum(seq(1,n,2)^2))
# lower right is 
#   3 = 1*2+1
#  13 = 3*4+1
#  31 = 5*6+1 ...
(lo_right <- sum(seq(1,n-2,2)*seq(2,n-1,2)) + (n-1)/2)
# upper left is 
#   7 = 2*3+1
#  21 = 4*5+1
#  43 = 6*7+1 ...
(up_left <- sum(seq(3,n,2)*seq(2,n-1,2)) + (n-1)/2)
# lower left is
#   5 = 2^2+1
#  17 = 4^2+1
#  37 = 6^2+1
(lo_left <- sum(seq(2,n-1,2)^2) + (n-1)/2)

up_right + lo_right + up_left + lo_left
