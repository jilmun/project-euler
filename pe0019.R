# Problem 19: Counting Sundays

yrs <- 1900:2000  # incl 1900 for now bc given 1/1/1900 is Monday
leapyrs <- yrs[(yrs%%100!=0)&(yrs%%4==0) | (yrs%%100==0)&(yrs%%400==0)]

#.. non leap year day count in each month 
mndays <- c(31,28,31,30,31,30,31,31,30,31,30,31)

#.. dataframe of year, month, day counts
mnarr <- data.frame(year=sort(rep(yrs,12)), mn=rep(1:12,101), days=rep(mndays,101))
mnarr[(mnarr$year %in% leapyrs) & (mnarr$mn==2),3] <- 29

#.. calc weekday of each 1st of the month from Jan 1900
mnfirsts <- 1  # 1/1/1900 is Monday=1
for (i in 1:(nrow(mnarr)-1))
  mnfirsts <- c(mnfirsts, (mnfirsts[i] + mnarr[i,]$days) %% 7)

#.. count Sundays (mnfirsts==0) from Jan 1901
sum(mnfirsts[-(1:12)]==0)  # drop first 12 months in 1900
