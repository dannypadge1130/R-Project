pollutantmean <- function(directory, pollutant, id = 1:332) {
  
  ##create vector of data files
  files <- lapply(id, function(x) {paste(directory,"/",sprintf("%03d", x),".csv", sep = "")})
  
  ##create data frame of all csv files
  data <- do.call(rbind, lapply(files, read.csv))
  
  ##calculate the mean of the provided pollutant and remove NA's
  mean(data[[pollutant]], na.rm = TRUE)
}