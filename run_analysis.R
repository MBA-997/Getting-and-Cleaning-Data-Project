

library(dplyr)
library(data.table)

#Downloading zipfile
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
fileDest <- "datum.zip"
download.file(fileUrl, fileDest, method = "curl")

#===================================================
#Reading readings/records of dataset function

getLines <- function(x, sep, replace){
    x <- readLines(x)
    x <- gsub(sep, replace, x)
    x <- textConnection(x)
    x<- read.table(x, sep = replace)
    return (x)
}
#================================================
#Read observations' subjects of TRAIN set

fileDest <- "./datum/UCI HAR Dataset/train/subject_train.txt"
fHandle <- readLines(fileDest)#Subjects total = 30
subjectID <- data.frame(subjectID = fHandle)

#======================================================
#Retrieving variable names, and the TRAIN dataset

fileDest <- "./datum/UCI HAR Dataset/train/y_train.txt"
activityID <- readLines(fileDest)#activity label

fileDest <- "./datum/UCI HAR Dataset/train/x_train.txt"
train <- getLines(fileDest, "  "," ")
train <- train[, -1]

#===================================
#Retrieving features names, and storing them in appropriate columns

fileDest <- "./datum/UCI HAR Dataset/features.txt"
features <- read.table(fileDest, sep=" ")
features <- data.frame(features=features[,-1])

vars <- 1:561
newFeatures <- 1:561
for (i in 1:561) {
    vars[i] <- paste0("V",i)
    newFeatures[i] <- features[i,]
    newFeatures[i] <- gsub("()","",newFeatures[i])
}
rm(features)
setnames(train, old = vars, new = newFeatures, skip_absent = T)

#adding columns to keep record
activityID <- as.data.frame(activityID)
train <- cbind(subjectID, train)
train <- cbind(activityID, train)

#=============================================================
#Retrieving test data, activityID, and subjectID for TEST dataset
#Updating column names

fileDest <- "./datum/UCI HAR Dataset/test/X_test.txt"
test <- getLines(fileDest, "  "," ")
test <- test[,-1]
setnames(test, old = vars, new = newFeatures, skip_absent = T)

fileDest <- "./datum/UCI HAR Dataset/test/subject_test.txt"
fHandle <- readLines(fileDest)
subjectID <- data.frame(subjectID = fHandle)

fileDest <- "./datum/UCI HAR Dataset/test/y_test.txt"
activityID <- readLines(fileDest)

test <- cbind(subjectID, test)
test <- cbind(activityID, test)

#============================
#Merging the train and test datasets

total <- rbind(train, test)

#Extracting mean and standard deviation columns
columnNames <- colnames(total)
meanNStdIndexes <- grep("[Mm]ean|[Ss]td|^activity|^subject",columnNames)
meanNStd <- total[,meanNStdIndexes]

meanNStdNames <- grep("[Mm]ean|[Ss]td|^activity|^subject",columnNames, val=T)

#Function for updating to proper names
beautifyVariables <- function(data){
    data <- sub("^tB","timeB", data)
    data <- sub("^tG","timeG", data)
    
    data <- sub("^fB", "frequencyB", data)
    data <- sub("_1$","",data)
    return (data)
}
meanNStdNames <- beautifyVariables(meanNStdNames)
colnames(meanNStd) <- meanNStdNames

#=====================================
#Retrieving activity labels

fileDest <- "./datum/UCI HAR Dataset/activity_labels.txt"
activityLabel <- read.table(fileDest, sep = " ")
activityLabel <- activityLabel[,-1]

#Updating activityID with activity labels
meanNStd <- arrange(meanNStd, meanNStd$activityID)
meanNStd$activityID <- factor(meanNStd$activityID, levels = 1:6, labels = activityLabel)
meanNStd <- rename(meanNStd, activity=activityID)

#Calculating average of observations upon subject, and activity
average <- meanNStd %>% group_by(meanNStd$subjectID, meanNStd$activity) %>% summarise(across(3:87, list(mean)))
average <- arrange(average, average$`meanNStd$subjectID`)
average <- rename(average, subjectID=`meanNStd$subjectID`, activity=`meanNStd$activity`)
colnames(average) <- beautifyVariables(colnames(average))
