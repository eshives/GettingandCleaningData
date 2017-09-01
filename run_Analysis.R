run_analysis <- function(){
  library(dplyr)
  dir=getwd()
  
  ## Download file, unzip, and read each relevant file into R
  fileURL="https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  td=tempdir()
  tf = tempfile(tmpdir=td,fileext=".zip")
  download.file(fileURL,tf)
  list.files<-unzip(tf,list=TRUE)
  
  name1 = list.files$Name[1]
  unzip(tf, files = name1, exdir=td, overwrite = TRUE)
  path1 = file.path(td, name1)
  activitylist <- read.table(path1, header = FALSE, row.names = NULL, stringsAsFactors = FALSE)
  
  name2 = list.files$Name[2]
  unzip(tf, files = name2, exdir=td, overwrite = TRUE)
  path2 = file.path(td, name2)
  features <- read.table(path2, header = FALSE, row.names = NULL, stringsAsFactors = FALSE)
  
  name16 = list.files$Name[16]
  unzip(tf, files = name16, exdir=td, overwrite = TRUE)
  path16 = file.path(td, name16)
  subjecttest <- read.table(path16, header = FALSE, row.names = NULL, stringsAsFactors = FALSE)
  
  name17 = list.files$Name[17]
  unzip(tf, files = name17, exdir=td, overwrite = TRUE)
  path17 = file.path(td, name17)
  Xtest <- read.table(path17, header = FALSE, row.names = NULL, stringsAsFactors = FALSE)
  
  name18 = list.files$Name[18]
  unzip(tf, files = name18, exdir=td, overwrite = TRUE)
  path18 = file.path(td, name18)
  Ytest <- read.table(path18, header = FALSE, row.names = NULL, stringsAsFactors = FALSE)
  
  name30 = list.files$Name[30]
  unzip(tf, files = name30, exdir=td, overwrite = TRUE)
  path30 = file.path(td, name30)
  subjecttrain <- read.csv(path30, header = FALSE, row.names = NULL, stringsAsFactors = FALSE)
  
  name31 = list.files$Name[31]
  unzip(tf, files = name31, exdir=td, overwrite = TRUE)
  path31 = file.path(td, name31)
  Xtrain <- read.table(path31, header = FALSE, row.names = NULL, stringsAsFactors = FALSE)
  
  name32 = list.files$Name[32]
  unzip(tf, files = name32, exdir=td, overwrite = TRUE)
  path32 = file.path(td, name32)
  Ytrain <- read.csv(path32, header = FALSE, row.names = NULL, stringsAsFactors = FALSE)
  
  
  #Merge the training and test sets to create one data set
  subjectdata <- rbind(subjecttest,subjecttrain)
  Xdata <- rbind(Xtest,Xtrain)
  Ydata <- rbind(Ytest,Ytrain)
  
  
  #Find the entries of features that include mean or standard deviation
  featmsd <- grep("mean\\(|std",features[,2])
  featmsdLabels <- grep("mean\\(|std",features[,2], value = TRUE)
  
  
  #Extract the corresponding mean and standard deviation data set entries
  extData <- Xdata[,featmsd]
  
  
  #Use descriptive activity names to name the activities in the data set
  activitylist <- data.frame(activitylist[,1],as.data.frame(tolower(gsub("_","",activitylist[,2]))))
  for (i in 1:6){
    Ydata <- lapply(Ydata, function(x){gsub(i,activitylist[i,2],x)})
    Ydata <- as.data.frame(Ydata)
  }
  
  
  #Label the data set with descriptive variable names
  colnames(subjectdata)<-"subjectid"
  colnames(Ydata)<-"activity"
  featcols<-tolower(gsub("-|\\(\\)","",featmsdLabels))
  colnames(extData)<-featcols
  allData <- cbind(subjectdata, Ydata, extData)
  
  
  #Create a second, independent tidy data set with the average of each variable
  # for each activity and each subject
  newData <- aggregate(allData, by = list(allData$subjectid,allData$activity), FUN = mean)
  newData <- mutate(newData, activity=Group.2)
  newData[,1:2] <- NULL
  write.table(newData,"averagetidydata.txt",row.name=FALSE)
  
}