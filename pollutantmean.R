pollutantmean <- function(directory, pollutant, id = 1:332){
  setwd(directory)
  files <- list.files()
  for (i in id) {
    temp <- read.csv(files[i])
    datalist <- if(i==id[1]){temp}  else  rbind(datalist, temp)
  }
  setwd("..")
  valid <- !is.na(datalist[pollutant])
  mean(datalist[pollutant][valid])
}

