# Problem 67: Maximum path sum II

#.. read value in as characters
setwd("C:/Users/[username]/Downloads")
tri <- readLines("p067_triangle.txt", encoding="UTF-8")

#.. count rows in tri to set dimensions
tri.nrow <- length(tri)  

#.. create full triangle matrix
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
