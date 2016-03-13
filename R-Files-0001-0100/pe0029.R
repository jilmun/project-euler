# Problem 29: Distinct powers

#.. pen and paper method
result <- 99 * 99  # count if all a^b are distinct

#.. subtract out powers of a = 2,3,5,6,7,10 that overlap with a^(2:100) [result=9361]
result <- result - sum(floor(100/(2:log(100,2)))-1)
result <- result - sum(floor(100/(2:log(100,3)))-1)
result <- result - sum(floor(100/(2:log(100,5)))-1)
result <- result - sum(floor(100/(2:log(100,6)))-1)
result <- result - sum(floor(100/(2:log(100,7)))-1)
(result <- result - sum(floor(100/(2:log(100,10)))-1))

#.. subtract additional powers that overlap with (a^2)^(2:100), (a^3)^(2:100), etc.
#..  from 4^(51:100) remove 17:  8^[34,36,38,...,66], 
#                           25: 16^[26:50], 
#                           10: 32^[22,24,26,...,40], 
#                           17: 64^[17:33]
result <- result - 17 - 25 - 10 - 17
#..  from 8^(34:100) remove  9: 16^[51,54,57,..75], 
#                           11: 32^[21,27,33,39,42,45,48,51,54,57,60], 
#                           17: 64^[34:50]
result <- result - 9 - 11 - 17
#.. from 16^(26:100) remove  8: 32^[44,52,56,64,68,72,76,80], 
#                            8: 64^[52,54,...,66]
result <- result - 8  - 8
#.. from 32^(21:100) remove  5: 64^[55,65,70,75,80]
result   <- result - 5
#..  from 9^(51:100) remove 17: 27^[34,36,38,...,66], 
#                           25: 81^[26:50]
result <- result - 17 - 25
#.. from 27^(34:100) remove  9: 81^[51,54,57,...,75]
result <- result - 9
result
