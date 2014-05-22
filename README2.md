Title Project:  Coursera Course - "Getting and Cleaning Data"
File: Readme.rd
Document Last Update Date: May 22, 2014
========================================================



#I.  INTRODUCTION

Project Purpose: The course project purpose is to take a series of raw data files containing smart phone activity/motion measurements (Samsung Galaxy S II) available from a public website (UIC Machine Learning) and using an R script and the tools learned in the course, to read, clean and create a "tidy data set" in a proscribed format, to be ready/usable for a future data analysis project.  

The project has 4 deliverables contained in the following Github repository
Github Repo Name: Samsung_UCI_HAR_Dataset_Repo:  

Deliverables (4 Files)
File Name  Description
run_analysis.R	R Script containing "R" code used to go from raw data to tidy data
README.md	Readme file containing a description of the repo and course project
CodeBook.md	Code book describing the specifications and step-by-step process used to derive the final dataset from the raw data. Includes rationale for all changes/cleaning/renaming of variables
TidyDataSet.txt	Final tidy data in txt format, created by the R script

PROJECT DESCRIPTION (For Peer Evaluation):

 Create one R script called run_analysis.R that does the following. 

1.	Merges the training and the test sets to create one data set.
2.	Extracts only the measurements on the mean and standard deviation for each measurement. 
3.	Uses descriptive activity names to name the activities in the data set
4.	Appropriately labels the data set with descriptive activity names. 
5.	Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

General format of TidyDataSet.txt  (see code book for full detailed description/format)
The tidy data set contains 180 records x 89 columns.  One record for each combination of 30 individuals in the study performing 1 of 6 activities.  The mean (average) measurement of 86 variables for the following 6 activities are contained in 86 columns:

1 walking
2 walking upstairs
3 walking downstairs
4 sitting
5 standing
6 laying
The 86 measurement variables were renamed because they contained inappropriate characters, such as "()", commas and hyphens (see CodeBook for exact steps).

Identifier naming convention, uses the following Google R standard:
https://google-styleguide.googlecode.com/svn/trunk/Rguide.xml

"Don't use underscores ( _ ) or hyphens ( - ) in identifiers. Identifiers should be named according to the following conventions. The preferred form for variable names is all lower case letters and words separated with dots (variable.name), but variableName is also accepted..."

Document Purpose:  The purpose of this Readme file is to provide the background information given in the course project description, the location of the raw data file and a general narrative account of steps taken to transform the raw data into the final tidy data set.  A CodeBook document contains detailed steps and final file specifications. This document and all files contained in this repo are not intended to be used for any other purpose.

#II.  RAW DATA FILE DESCRIPTION

Raw Data Files in this Repo (7 Files)
File Name	Description
Subject_test.txt	Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30, a 30% sample of 9 subjects
X_test.txt	Test data set, 2947 records
y_test.txt	Test labels, gives the SubjectID in the test set (9 subjects)
Subject_train.txt	Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30, a 70% sample of 21 subjects
X_train.txt	Training data set, 7352 records
y_train.txt	Training labels, gives the SubjectID in the training set (21 subjects)
features.txt	Variable measurements (561 column headings)

Original Data Source Description (from README.txt)
Human Activity Recognition Using Smartphones Dataset
Version 1.0

Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws

"The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. "

"The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details."

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

The dataset includes the following files:
=========================================

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

For more information about this dataset contact: activityrecognition@smartlab.ws

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

 
#III.  EXPLORATORY DATA ANALYSIS

An exploratory data analysis exercise was conducted in R on the 7 raw data files to do two things:  (1) check all variables for NA values and (2) check cross tabs of the identifier variables in order to gain a better understanding of the meaning of the row dimension of the raw data files.

File: X_test:  2947 observations, 561 variables
File: X_train: 7352 observations, 561 variables

To see if there are any NA values in the two main datasets, R Code:

> all(colSums(is.na(filetest))==0)
[1] TRUE
> all(colSums(is.na(filetrain))==0)
[1] TRUE

This test shows that no values of the columns within these two files contain NA values.

Subject Ids are a sequence of integers from 1 to 30.
	1,2,3...30

Activity names are given in the activity_labels.txt file and are as follows:
1 walking
2 walking_upstairs
3 walking_downstairs
4 sitting
5 standing
6 laying

File: Subject_test.txt: 
2947 observations = 9 individuals with variable # observations as follows:
> table(fileSubjectTest$V1)

  2   4   9  10  12  13  18  20  24 
302 317 288 294 320 327 364 354 381 

File: y_test.txt = activity file for the test data set
> table(fileActivityTest$V1)

  1   2   3   4   5   6 
496 471 420 491 532 537

File: Subject_train.txt: 
7352 observations = 21 individuals with variable # observations as follows:
> table(fileSubjectTrain$V1)

  1   3   5   6   7   8  11  14  15  16  17  19  21  22  23  25  26  27  
347 341 302 325 308 281 316 323 328 366 368 360 408 321 372 409 392 376 

28  29  30
382 344 383


file: y_train.txt= activity file for the training data set
> table(fileActivityTrain$V1)

   1    2    3    4    5    6 
1226 1073  986 1286 1374 1407


> table(FinalData$subjectID,FinalData$activityID)
    
      1  2  3  4  5  6
  1  95 53 49 47 53 50
  2  59 48 47 46 54 48
  3  58 59 49 52 61 62
  4  60 52 45 50 56 54
  5  56 47 47 44 56 52
  6  57 51 48 55 57 57
  7  57 51 47 48 53 52
  8  48 41 38 46 54 54
  9  52 49 42 50 45 50
  10 53 47 38 54 44 58
  11 59 54 46 53 47 57
  12 50 52 46 51 61 60
  13 57 55 47 49 57 62
  14 59 54 45 54 60 51
  15 54 48 42 59 53 72
  16 51 51 47 69 78 70
  17 61 48 46 64 78 71
  18 56 58 55 57 73 65
  19 52 40 39 73 73 83
  20 51 51 45 66 73 68
  21 52 47 45 85 89 90
  22 46 42 36 62 63 72
  23 59 51 54 68 68 72
  24 58 59 55 68 69 72
  25 74 65 58 65 74 73
  26 59 55 50 78 74 76
  27 57 51 44 70 80 74
  28 54 51 46 72 79 80
  29 53 49 48 60 65 69
  30 65 65 62 62 59 70

> str(TidyDataSet)
'data.frame':	180 obs. of  89 variables:
 $ subjectID                            : int  1 1 1 1 1 1 2 2 2 2 ...
 $ activityID                           : Factor w/ 6 levels "1","2","3","4",..: 1 2 3 4 5 6 1 2 3 4 ...
 $ activity                             : Factor w/ 6 levels "laying","sitting",..: 4 6 5 2 3 1 4 6 5 2 ...
 $ meantBodyAccmeanX                    : num  0.277 0.255 0.289 0.261 0.279 ...
 $ meantBodyAccmeanY                    : num  -0.01738 -0.02395 -0.00992 -0.00131 -0.01614 ...
 $ meantBodyAccmeanZ                    : num  -0.1111 -0.0973 -0.1076 -0.1045 -0.1106 ...
 $ meantBodyAccstdX                     : num  -0.284 -0.355 0.03 -0.977 -0.996 ...
 $ meantBodyAccstdY                     : num  0.11446 -0.00232 -0.03194 -0.92262 -0.97319 ...
 $ meantBodyAccstdZ                     : num  -0.26 -0.0195 -0.2304 -0.9396 -0.9798 ...
 $ meantGravityAccmeanX                 : num  0.935 0.893 0.932 0.832 0.943 ...
 $ meantGravityAccmeanY                 : num  -0.282 -0.362 -0.267 0.204 -0.273 ...
 $ meantGravityAccmeanZ                 : num  -0.0681 -0.0754 -0.0621 0.332 0.0135 ...
 $ meantGravityAccstdX                  : num  -0.977 -0.956 -0.951 -0.968 -0.994 ...
 $ meantGravityAccstdY                  : num  -0.971 -0.953 -0.937 -0.936 -0.981 ...
 $ meantGravityAccstdZ                  : num  -0.948 -0.912 -0.896 -0.949 -0.976 ...
 $ meantBodyAccJerkmeanX                : num  0.074 0.1014 0.0542 0.0775 0.0754 ...
 $ meantBodyAccJerkmeanY                : num  0.028272 0.019486 0.02965 -0.000619 0.007976 ...
 $ meantBodyAccJerkmeanZ                : num  -0.00417 -0.04556 -0.01097 -0.00337 -0.00369 ...
 $ meantBodyAccJerkstdX                 : num  -0.1136 -0.4468 -0.0123 -0.9864 -0.9946 ...
 $ meantBodyAccJerkstdY                 : num  0.067 -0.378 -0.102 -0.981 -0.986 ...
 $ meantBodyAccJerkstdZ                 : num  -0.503 -0.707 -0.346 -0.988 -0.992 ...
 $ meantBodyGyromeanX                   : num  -0.0418 0.0505 -0.0351 -0.0454 -0.024 ...
 $ meantBodyGyromeanY                   : num  -0.0695 -0.1662 -0.0909 -0.0919 -0.0594 ...
 $ meantBodyGyromeanZ                   : num  0.0849 0.0584 0.0901 0.0629 0.0748 ...
 $ meantBodyGyrostdX                    : num  -0.474 -0.545 -0.458 -0.977 -0.987 ...
 $ meantBodyGyrostdY                    : num  -0.05461 0.00411 -0.12635 -0.96647 -0.98773 ...
 $ meantBodyGyrostdZ                    : num  -0.344 -0.507 -0.125 -0.941 -0.981 ...
 $ meantBodyGyroJerkmeanX               : num  -0.09 -0.1222 -0.074 -0.0937 -0.0996 ...
 $ meantBodyGyroJerkmeanY               : num  -0.0398 -0.0421 -0.044 -0.0402 -0.0441 ...
 $ meantBodyGyroJerkmeanZ               : num  -0.0461 -0.0407 -0.027 -0.0467 -0.049 ...
 $ meantBodyGyroJerkstdX                : num  -0.207 -0.615 -0.487 -0.992 -0.993 ...
 $ meantBodyGyroJerkstdY                : num  -0.304 -0.602 -0.239 -0.99 -0.995 ...
 $ meantBodyGyroJerkstdZ                : num  -0.404 -0.606 -0.269 -0.988 -0.992 ...
 $ meantBodyAccMagmean                  : num  -0.137 -0.1299 0.0272 -0.9485 -0.9843 ...
 $ meantBodyAccMagstd                   : num  -0.2197 -0.325 0.0199 -0.9271 -0.9819 ...
 $ meantGravityAccMagmean               : num  -0.137 -0.1299 0.0272 -0.9485 -0.9843 ...
 $ meantGravityAccMagstd                : num  -0.2197 -0.325 0.0199 -0.9271 -0.9819 ...
 $ meantBodyAccJerkMagmean              : num  -0.1414 -0.4665 -0.0894 -0.9874 -0.9924 ...
 $ meantBodyAccJerkMagstd               : num  -0.0745 -0.479 -0.0258 -0.9841 -0.9931 ...
 $ meantBodyGyroMagmean                 : num  -0.161 -0.1267 -0.0757 -0.9309 -0.9765 ...
 $ meantBodyGyroMagstd                  : num  -0.187 -0.149 -0.226 -0.935 -0.979 ...
 $ meantBodyGyroJerkMagmean             : num  -0.299 -0.595 -0.295 -0.992 -0.995 ...
 $ meantBodyGyroJerkMagstd              : num  -0.325 -0.649 -0.307 -0.988 -0.995 ...
 $ meanfBodyAccmeanX                    : num  -0.2028 -0.4043 0.0382 -0.9796 -0.9952 ...
 $ meanfBodyAccmeanY                    : num  0.08971 -0.19098 0.00155 -0.94408 -0.97707 ...
 $ meanfBodyAccmeanZ                    : num  -0.332 -0.433 -0.226 -0.959 -0.985 ...
 $ meanfBodyAccstdX                     : num  -0.3191 -0.3374 0.0243 -0.9764 -0.996 ...
 $ meanfBodyAccstdY                     : num  0.056 0.0218 -0.113 -0.9173 -0.9723 ...
 $ meanfBodyAccstdZ                     : num  -0.28 0.086 -0.298 -0.934 -0.978 ...
 $ meanfBodyAccmeanFreqX                : num  -0.2075 -0.4187 -0.3074 -0.0495 0.0865 ...
 $ meanfBodyAccmeanFreqY                : num  0.1131 -0.1607 0.0632 0.0759 0.1175 ...
 $ meanfBodyAccmeanFreqZ                : num  0.0497 -0.5201 0.2943 0.2388 0.2449 ...
 $ meanfBodyAccJerkmeanX                : num  -0.1705 -0.4799 -0.0277 -0.9866 -0.9946 ...
 $ meanfBodyAccJerkmeanY                : num  -0.0352 -0.4134 -0.1287 -0.9816 -0.9854 ...
 $ meanfBodyAccJerkmeanZ                : num  -0.469 -0.685 -0.288 -0.986 -0.991 ...
 $ meanfBodyAccJerkstdX                 : num  -0.1336 -0.4619 -0.0863 -0.9875 -0.9951 ...
 $ meanfBodyAccJerkstdY                 : num  0.107 -0.382 -0.135 -0.983 -0.987 ...
 $ meanfBodyAccJerkstdZ                 : num  -0.535 -0.726 -0.402 -0.988 -0.992 ...
 $ meanfBodyAccJerkmeanFreqX            : num  -0.209 -0.377 -0.253 0.257 0.314 ...
 $ meanfBodyAccJerkmeanFreqY            : num  -0.3862 -0.5095 -0.3376 0.0475 0.0392 ...
 $ meanfBodyAccJerkmeanFreqZ            : num  -0.18553 -0.5511 0.00937 0.09239 0.13858 ...
 $ meanfBodyGyromeanX                   : num  -0.339 -0.493 -0.352 -0.976 -0.986 ...
 $ meanfBodyGyromeanY                   : num  -0.1031 -0.3195 -0.0557 -0.9758 -0.989 ...
 $ meanfBodyGyromeanZ                   : num  -0.2559 -0.4536 -0.0319 -0.9513 -0.9808 ...
 $ meanfBodyGyrostdX                    : num  -0.517 -0.566 -0.495 -0.978 -0.987 ...
 $ meanfBodyGyrostdY                    : num  -0.0335 0.1515 -0.1814 -0.9623 -0.9871 ...
 $ meanfBodyGyrostdZ                    : num  -0.437 -0.572 -0.238 -0.944 -0.982 ...
 $ meanfBodyGyromeanFreqX               : num  0.0148 -0.1875 -0.1005 0.1892 -0.1203 ...
 $ meanfBodyGyromeanFreqY               : num  -0.0658 -0.4736 0.0826 0.0631 -0.0447 ...
 $ meanfBodyGyromeanFreqZ               : num  0.000773 -0.133374 -0.075676 -0.029784 0.100608 ...
 $ meanfBodyAccMagmean                  : num  -0.1286 -0.3524 0.0966 -0.9478 -0.9854 ...
 $ meanfBodyAccMagstd                   : num  -0.398 -0.416 -0.187 -0.928 -0.982 ...
 $ meanfBodyAccMagmeanFreq              : num  0.1906 -0.0977 0.1192 0.2367 0.2846 ...
 $ meanfBodyBodyAccJerkMagmean          : num  -0.0571 -0.4427 0.0262 -0.9853 -0.9925 ...
 $ meanfBodyBodyAccJerkMagstd           : num  -0.103 -0.533 -0.104 -0.982 -0.993 ...
 $ meanfBodyBodyAccJerkMagmeanFreq      : num  0.0938 0.0854 0.0765 0.3519 0.4222 ...
 $ meanfBodyBodyGyroMagmean             : num  -0.199 -0.326 -0.186 -0.958 -0.985 ...
 $ meanfBodyBodyGyroMagstd              : num  -0.321 -0.183 -0.398 -0.932 -0.978 ...
 $ meanfBodyBodyGyroMagmeanFreq         : num  0.268844 -0.219303 0.349614 -0.000262 -0.028606 ...
 $ meanfBodyBodyGyroJerkMagmean         : num  -0.319 -0.635 -0.282 -0.99 -0.995 ...
 $ meanfBodyBodyGyroJerkMagstd          : num  -0.382 -0.694 -0.392 -0.987 -0.995 ...
 $ meanfBodyBodyGyroJerkMagmeanFreq     : num  0.191 0.114 0.19 0.185 0.334 ...
 $ meanangletBodyAccMeangravity         : num  0.060454 0.096086 -0.002695 0.027442 -0.000222 ...
 $ meanangletBodyAccJerkMeangravityMean : num  -0.00793 -0.06108 0.08993 0.02971 0.02196 ...
 $ meanangletBodyGyroMeangravityMean    : num  0.0131 -0.1947 0.0633 0.0677 -0.0338 ...
 $ meanangletBodyGyroJerkMeangravityMean: num  -0.0187 0.0657 -0.04 -0.0649 -0.0279 ...
 $ meanangleXgravityMean                : num  -0.729 -0.647 -0.744 -0.591 -0.743 ...
 $ meanangleYgravityMean                : num  0.277 0.3348 0.2672 -0.0605 0.2702 ...
 $ meanangleZgravityMean                : num  0.0689 0.0742 0.065 -0.218 0.0123 ...




Dimensions of TidyDataSet

Commentary:  From the above exploratory analysis, it is clear that all 30 individuals (SubjectID) have observations (rows) in all 6 activities.  This implies, that the desired final TidyDataSet file will contain 180 records, = 30 Subjects x 6 activities.

Because the project description/instructions were to retain only the analysis variables which contained either a mean or a standard deviation measurement, only 86 variables (columns) satisfied this criterion out of the 561 original columns. With the addition of 3 factor/ID columns (subjectID, activityID, activity), the final dimensions of the TidyDataSet becomes:  180 rows x 89 columns.
