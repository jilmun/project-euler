# Problem 29: Distinct powers

#.. pen and paper method
result <- 99 * 99  # count if all a^b are distinct

#.. subtract out powers of a = 2,3,5,6,7,10 under 100
#.. that overlap with a^(2:100) [result=9361]
(result <- result - sum(floor(100/(2:log(100,2)))-1))
(result <- result - sum(floor(100/(2:log(100,3)))-1))
(result <- result - sum(floor(100/(2:log(100,5)))-1))
(result <- result - sum(floor(100/(2:log(100,6)))-1))
(result <- result - sum(floor(100/(2:log(100,7)))-1))
(result <- result - sum(floor(100/(2:log(100,10)))-1))

#.. subtract additional powers that overlap with 
#.. (a^2)^(2:100), (a^3)^(2:100), etc.
#..  for 4: remove....8...16...32...64
(result  <- result - 17 - 25 - 10 - 17)
#..  for 8: remove..16...32...64
(result  <- result - 9 - 11 - 17)
#.. for 16: remove..32...64
(result  <- result - 8  - 8)
#.. for 32: remove..64
(result  <- result - 5)
#..  for 9: remove....27...81
(result  <- result - 17 - 25)
#.. for 27: remove...81
(result  <- result - 9)
