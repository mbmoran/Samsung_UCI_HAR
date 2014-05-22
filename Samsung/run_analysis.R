##########################################################################################################################################
## R script:  run_analysis.R
## Date: 5-25-2014
## Author mb moran
## Project for Coursera "Getting and Cleaning Data" course
## 
## Objective: Getting, cleaning, creating a "tidy data set" from raw data in a public dataset: Smartphone activity, source UCI Machine Learning lab
## 
## This R script assumes the raw data files are saved into the workspace referenced in the script
## URL to download the original raw data, zip file: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
## 
##########################################################################################################################################

# Set working directory
# MBM Remember to change this to the Github repo name after uploading everything
setwd("~/Actuarial/Coursera/Data Science/Getting and Cleaning Data/Project/getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset")

# Load packages needed for this script. Uncomment when running script the first time
install.packages("reshape")
library(reshape)
library(plyr)

# STEP 1.  After downloading and unzipping the zip file from the URL, read the raw data files
# into the R global environment using the table function, assign file names, clean variable names

# read the first file features.txt which contains the measure variables, column names
filefeatures<-read.table("~/Actuarial/Coursera/Data Science/Getting and Cleaning Data/Project/getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/features.txt")

# STEP 1.1 Clean filefeatures names of columns so that there are no (), no commas and no hyphens
filefeaturesClean<-as.data.frame(gsub("\\(","",filefeatures$V2))
colnames(filefeaturesClean)[1] <- "measures"
filefeaturesClean<-as.data.frame(gsub("\\)","",filefeaturesClean$measures))
colnames(filefeaturesClean)[1] <- "measures"
filefeaturesClean<-as.data.frame(gsub("-","",filefeaturesClean$measures))
colnames(filefeaturesClean)[1] <- "measures"
filefeaturesClean<-as.data.frame(gsub(",","",filefeaturesClean$measures))
colnames(filefeaturesClean)[1] <- "measures"

# Step 1.2 Load remaining 6 raw data files 
filetest<-read.table("~/Actuarial/Coursera/Data Science/Getting and Cleaning Data/Project/getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/test/X_test.txt",col.names=filefeaturesClean$measures)
filetrain<-read.table("~/Actuarial/Coursera/Data Science/Getting and Cleaning Data/Project/getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/train/X_train.txt",col.names=filefeaturesClean$measures)

fileSubjectTest<-read.table("~/Actuarial/Coursera/Data Science/Getting and Cleaning Data/Project/getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/test/subject_test.txt",col.names=c("subjectID"))
fileSubjectTrain<-read.table("~/Actuarial/Coursera/Data Science/Getting and Cleaning Data/Project/getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/train/subject_train.txt",col.names=c("subjectID"))

fileActivityTest<-read.table("~/Actuarial/Coursera/Data Science/Getting and Cleaning Data/Project/getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/test/y_test.txt",col.names=c("activityID"))
fileActivityTrain<-read.table("~/Actuarial/Coursera/Data Science/Getting and Cleaning Data/Project/getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/train/y_train.txt",col.names=c("activityID"))

# STEP 2: Remove columns (ie measurement variables) from filetest and filetrain that do not contain either mean or standard deviation in the column name
mynames<-c("mean","std")
whichcols<-grep(paste(mynames, collapse='|'), filefeaturesClean$measures, ignore.case=TRUE)
filetest<-filetest[,whichcols]
filetrain<-filetrain[,whichcols]

# STEP 3: Create Activity vector, character values 1 to 6 that will be used to merge with filetest and filetrain
ActivityVector<-as.vector(c("walking","walking upstairs","walking downstairs","sitting","standing","laying"))
ActivityVector<-cbind(c("1","2","3","4","5","6"),ActivityVector)
colnames(ActivityVector)[1] <- "activityID"
colnames(ActivityVector)[2] <- "activity"

# STEP 4: Create and append 2 new columns to filetest and filetrain, activityID and subjectID
# Step 4.1 Append fileActivityTest to filetest and fileActivityTrain to filetran and rename column heading of the ActivityID for better clarity
filetest<-cbind(fileActivityTest$activityID,filetest)
filetrain<-cbind(fileActivityTrain$activityID,filetrain)
colnames(filetest)[1] <- "activityID"
colnames(filetrain)[1] <- "activityID"

# Step 4.2 Append fileSubjectTest to filetest and fileSubjectTrain to filetrain and rename column heading of the SubjectId for better clarity
mergedTest<-cbind(fileSubjectTest$subjectID,filetest)
mergedTrain<-cbind(fileSubjectTrain$subjectID,filetrain)
colnames(mergedTest)[1] <- "subjectID"
colnames(mergedTrain)[1] <- "subjectID"

# STEP 5: Merge the test and the train datasets by using rbind to append mergedTrain with mergedTest
FinalData<-rbind(mergedTest,mergedTrain)

# STEP 6: Create list of variables which will be written to a csv file for easy input into the CodeBook
listOfVariables <- data.frame(names(FinalData))
write.csv(listOfVariables,file="listOfVariables.csv")

# STEP 7: Create TidyData by melting the FinalData set into one record per measurement length-wise SubjectID x ActivityID permutation
# and Casting the melted data width-wise a mean variable for each of the analysis variables
mymelt<-as.data.frame(melt(data=FinalData, id.vars=1:2,measured=3:88))
TidyData<-as.data.frame(cast(mymelt, subjectID+activityID ~ variable, mean))

# Step 7.1 rename measurement columns 3 to 88 to start with mean because TidyData has mean measurements not original raw data
names(TidyData)<-paste("mean",names(TidyData),sep="")
colnames(TidyData)[1] <- "subjectID"
colnames(TidyData)[2] <- "activityID"

# STEP 8: Merge ActivityVector with TidyData to create a new column in the data sets filetest and file train, called "Activity"
TidyData<-merge(ActivityVector,TidyData,by.x="activityID",by.y="activityID")
TidyDataSet<-as.data.frame(cbind(TidyData$subjectID,TidyData$activityID,TidyData$activity,TidyData[,4:89]))
colnames(TidyDataSet)[1] <- "subjectID"
colnames(TidyDataSet)[2] <- "activityID"
colnames(TidyDataSet)[3] <- "activity"
TidyDataSet<-arrange(TidyDataSet,subjectID,activityID,activity)

# STEP 9: Write TidyDataSet to txt file
write.csv(TidyDataSet,file="TidyDataSet.txt")

# SETP 10: Optional Exploratory Data Analysis
# use the all() function with colSums() and is.na() to check for any variables that are NA. If=0 is true then there are no NAs
# use table() function to cross tabulate the number of observations for each subjectIDxactivityID permutation
# use str() and summary() functions to output summary statistics of the final TidyDataset for documentation/codebook purposes
# Table and str output to the console, but summary output is saved in variable named s2 and written to "summaryS2.csv"
all(colSums(is.na(filetest))==0)
all(colSums(is.na(filetrain))==0)
table(FinalData$subjectID,FinalData$activityID)
str(TidyDataSet)
s2<-summary(TidyDataSet)
write.csv(s2,file="summaryS2.txt")

