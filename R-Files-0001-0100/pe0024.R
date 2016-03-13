# Problem 24: Lexicographic permutations

#.. setting 1st digit, gives (10-1)! permutations for rest of digits
#.. similarly, setting 1st and 2nd digits has (10-2)! permutations
nth <- 1000000
remainder <- nth
mydigs <- numeric(0)
cnt <- 9
while(remainder > 0) {
  mydigs <- c(mydigs, remainder %/% factorial(cnt))
  remainder <- remainder %% factorial(cnt)
  cnt <- cnt - 1
}
mydigs  #= 2 6 6 2 5 1 2 2
#.. 1st digit: 0 1 [2] 3 4 5 6 7 8 9
#.. 2nd digit: 0 1 3 4 5 6 [7] 8 9
#.. 3rd digit: 0 1 3 4 5 6 [8] 9
#.. 4th digit: 0 1 [3] 4 5 6 9
#.. 5th digit: 0 1 4 5 6 [9]
#.. 6th digit: 0 [1] 4 5 6
#.. 7th digit: 0 4 [5] 6
#.. 8th digit: 0 4 (6)
#....... rest: 0 4
remainder  #= 0
#.. because remainder is 0
#.... result is equal to permutation right before 2783915[604]
#.... which is 2783915[460]
