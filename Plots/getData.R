getData <- function()
{
  
  fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
  archiveName <- "getData.zip"
  if(!file.exists(archiveName))
  {
  download.file(fileUrl, archiveName)
  }
  unzip(archiveName)
  data <- read.table("household_power_consumption.txt",header = TRUE,sep = ";",
                     stringsAsFactors = FALSE)

  subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
  return(subSetData)
}