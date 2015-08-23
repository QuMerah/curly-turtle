s<-0
for (i in 1:10) {
  p <- 1
  for (j in 1:i) {
    p <- p*j
  }
  s <- s+(15^i*exp(-15)/p)
}
