# Problem 22: Names scores

#.. read names from text file
setwd("C:/Users/[username]/Downloads")
namelist <- scan("p022_names.txt", what=character(), sep=",")

#.. force NA to be character
namelist[is.na(namelist)] <- "NA"

#.. calculate and add score for each name element
namelist <- sort(namelist)
score <- 0
for (i in 1:length(namelist)) {
  currname <- unlist(strsplit(namelist[i], ""))
  score <- score + i * sum(sapply(currname, function(x) which(x==LETTERS)))
}

score
