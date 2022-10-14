complete <- function(directory, id = 1:332)
{
  files <- list.files(directory,full.names = TRUE)
  javab <- data.frame(id=id, comp=sum(complete.cases(read.csv(files[id]))))
  javab
}