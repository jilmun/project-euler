# Problem 31: Coin sums

fn_way_count <- function(num, arr) {
  if (length(arr) == 1) return(1)
  arr <- sort(arr, decreasing=TRUE)
  count <- 0
  for (i in 0:floor(num/arr[1]))
    count <- count + fn_way_count(num-i*arr[1], arr[-1])
  return(count)
}
fn_way_count(200, c(200,100,50,20,10,5,2,1))
