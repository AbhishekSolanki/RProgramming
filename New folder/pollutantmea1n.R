pollutantmean <- function(directory, pollutant, id=1:332) {
  id<-c(id)
  datas<-rep(0,length(id))
  filenames <- sprintf("%03d.csv", id)
  filedir <- file.path(directory, filenames)
  for(i in 1:length(id)) {
    dataset <- read.csv(filedir[i])
    datas[i] <- mean(dataset[[pollutant]],na.rm=T)
  }
  datas
  return(mean(datas))
}