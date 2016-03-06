complete <- function(directory, id = 1:332) {
  
  ##initialize completed data table
  completedData <- data.frame(id = integer(0), nobs = integer(0))
  
  ##loop files to populate completed data table
  for(monitor in id) {
    
    ##get file
    file <- paste(directory,"/",sprintf("%03d", monitor),".csv", sep = "")
    
    ##read csv data
    data <- read.csv(file);
    
    completedData <- rbind(completedData, data.frame(id=monitor, nobs=sum(complete.cases(data))))
  }

  completedData
  
}