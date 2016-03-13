# Problem 18: Maximum path sum I

#.. read value in as characters
tri <-
"75
95 64
17 47 82
18 35 87 10
20 04 82 47 65
19 01 23 75 03 34
88 02 77 73 07 63 67
99 65 04 28 06 16 70 92
41 41 26 56 83 40 80 70 33
41 48 72 33 47 32 37 16 94 29
53 71 44 65 25 43 91 52 97 51 14
70 11 33 28 77 73 17 78 39 68 17 57
91 71 52 38 17 14 91 43 58 50 27 29 48
63 66 04 68 89 53 67 30 73 16 69 87 40 31
04 62 98 27 23 09 70 98 73 93 38 53 60 04 23"

#.. count rows in tri by counting '\n'
tri.nrow <- sapply(gregexpr("\\n+", tri), length) + 1  

#.. create full triangle matrix
tri <- gsub("\\n", " ", tri)  # remove '\n'
tri <- as.numeric(unlist(strsplit(tri, " ")))
tri.full <- matrix(0, nrow=tri.nrow, ncol=tri.nrow)
for (i in 1:tri.nrow)
  tri.full[i, 1:i] <- tri[(sum(1:i)-i+1):sum(1:i)]

#.. find max path in bottom two rows, then move up
maxpath <- tri.full
for (i in tri.nrow:2) {
  toLeft <- maxpath[i,1:(i-1)] + maxpath[i-1,1:(i-1)]
  toRight <- maxpath[i,2:i] + maxpath[i-1,1:(i-1)]
  maxpath[i-1,1:(i-1)] <- pmax(toLeft, toRight)
}

#.. result is in top cell of maxpath
maxpath[1,1]
