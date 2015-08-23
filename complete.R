complete <- function(directory, id = 1:332){
  setwd("specdata")
  files <- list.files()
  for (i in id){
    temp <- read.csv(files[i])
    good <- complete.cases(temp)
    nobs <- 
      if(i == id[1])  nrow(temp[good,])
      else  c(nobs, nrow(temp[good,]))
  }
  setwd("..")
  data.frame(cbind(id, nobs))
}
