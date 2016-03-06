add2 <- function(x, y) {
  x + y
}

above10 <- function(x) {
  use <- x > 10
  x[use]
}

# default of y is 10
above <- function(x, y = 10) {
  use <- x > y
  x[use]
}

columnmean <- function(y, removeNA = TRUE) {
  nc <- ncol(y)
  means <- numeric(nc)
  for(index in 1:nc) {
    means[index] <- mean(y[,index], na.rm = removeNA)
  }
  means
}