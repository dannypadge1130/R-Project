corr <- function(directory, threshold = 0) {
  
  corrV <- numeric(length = 0)
  
  data <- complete(directory)
  
  data_threshold <- subset(data, nobs > threshold)
  
  ##loop files to populate completed data table
  for(monitor in data_threshold[["id"]]) {
    
    ##get file
    file <- paste(directory,"/",sprintf("%03d", monitor),".csv", sep = "")
    
    ##read csv data
    curr_data <- read.csv(file);

    corrV <- c(corrV,cor(x = curr_data[["sulfate"]], y = curr_data[["nitrate"]], use = "complete.obs"))
    
  }
  
  corrV
}