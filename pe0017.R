# Problem 17: Number letter counts

#.. single digit words 1-9
len.1_9 <- nchar("onetwothreefourfivesixseveneightnine")

#.. unique words 10-19
len.10_19 <- nchar("teneleventwelvethirteenfourteenfifteensixteenseventeeneighteennineteen")

#.. double digit words 20, 30, ... 90
len.2090 <- nchar("twentythirtyfortyfiftysixtyseventyeightyninety")

#.. 1-99 letter count
len.1_99 <- 
  len.1_9 +                     # 1-9
  len.10_19 +                   # 10-19
  len.2090 * 10 + len.1_9 * 8   # 20-29, 30-39, ... 90-99

#.. 1-999 letter count
len.1_999 <-
  (len.1_9 + nchar("hundred")*9) * 100 + 
  nchar("and")*9 * 99 +
  len.1_99 * 10

#.. 1-1000 letter count
len.1_999 + nchar("onethousand")
