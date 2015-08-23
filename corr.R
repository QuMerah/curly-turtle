corr <- function(directory, threshold = 0){
  files <- list.files(directory)
  source("complete.R")
  cpt <- complete(directory)
  id.v <- cpt[cpt$nobs>threshold,]$id
  s <- NULL
  setwd(directory)
  for (i in id.v) {
    temp <- read.csv(files[i])
    good <- complete.cases(temp)
    temp <- temp[good,]
    t <- cor(temp$sulfate, temp$nitrate)
    s <- c(s,t)
  }
  setwd("..")
  s
}