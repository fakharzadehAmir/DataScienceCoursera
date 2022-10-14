pollutantmean <- function(directory, pollutant, id = 1:332)
{
  files <- list.files(directory,full.names = TRUE)
  datas <- data.frame()
  for (i in id) {
    datas <- rbind(datas,read.csv(files[i]))
    
  }
  meandata <- mean(datas[, pollutant], na.rm = TRUE)
  meandata
}