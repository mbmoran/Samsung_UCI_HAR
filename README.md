Samsung_UCI_HAR_Dataset_Repo
============================

Create tidy data set from raw smart phone activity/motion measurements from public website (UIC Machine Learning)
Project:  Coursera Course - "Getting and Cleaning Data"
File: Readme.rd
Document Last Update Date: May 22, 2014

## I.  INTRODUCTION

Project Purpose: The course project purpose is to take a series of raw data files containing smart phone activity/motion measurements (Samsung Galaxy S II) available from a public website (UIC Machine Learning) and using an R script and the tools learned in the course, to read, clean and create a "tidy data set" in a proscribed format, to be ready/usable for a future data analysis project.  

The project has 4 deliverables contained in the following Github repository
Github Repo Name: Samsung_UCI_HAR_Dataset_Repo:  

#### Deliverables (4 Files)
#### File Name	Description
- 1.  run_analysis.R	R Script containing "R" code used to go from raw data to tidy data
- 2.  README.md	Readme file containing a description of the repo and course project
- 3.  CodeBook.md	Code book describing the specifications and step-by-step process used to derive the final dataset from #the raw data. Includes rationale for all changes/cleaning/renaming of variables
- 4.  TidyDataSet.txt	Final tidy data in txt format, created by the R script

#### PROJECT DESCRIPTION (For Peer Evaluation):

 Create one R script called run_analysis.R that does the following. 

1.	Merges the training and the test sets to create one data set.
2.	Extracts only the measurements on the mean and standard deviation for each measurement. 
3.	Uses descriptive activity names to name the activities in the data set
4.	Appropriately labels the data set with descriptive activity names. 
5.	Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

General format of TidyDataSet.txt  (see code book for full detailed description/format)
The tidy data set contains 180 records x 89 columns.  One record for each combination of 30 individuals in the study performing 1 of 6 activities.  The mean (average) measurement of 86 variables for the following 6 activities are contained in 86 columns:

######1 walking
######2 walking upstairs
######3 walking downstairs
######4 sitting
######5 standing
######6 laying
The 86 measurement variables were renamed because they contained inappropriate characters, such as "()", commas and hyphens (see CodeBook for exact steps).

Identifier naming convention, uses the following Google R standard:
https://google-styleguide.googlecode.com/svn/trunk/Rguide.xml

"Don't use underscores ( _ ) or hyphens ( - ) in identifiers. Identifiers should be named according to the following conventions. The preferred form for variable names is all lower case letters and words separated with dots (variable.name), but variableName is also accepted..."

Document Purpose:  The purpose of this Readme file is to provide the background information given in the course project description, the location of the raw data file and a general narrative account of steps taken to transform the raw data into the final tidy data set.  A CodeBook document contains detailed steps and final file specifications. This document and all files contained in this repo are not intended to be used for any other purpose.

## II.  RAW DATA FILE DESCRIPTION

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

 
## III.  EXPLORATORY DATA ANALYSIS

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

File: y_test.txt = activity file for the test data set
> table(fileActivityTest$V1)

File: Subject_train.txt: 
7352 observations = 21 individuals with variable # observations as follows:
> table(fileSubjectTrain$V1)

file: y_train.txt= activity file for the training data set
> table(fileActivityTrain$V1)

Dimensions of TidyDataSet

Commentary:  From the above exploratory analysis, it is clear that all 30 individuals (SubjectID) have observations (rows) in all 6 activities.  This implies, that the desired final TidyDataSet file will contain 180 records, = 30 Subjects x 6 activities.

Because the project description/instructions were to retain only the analysis variables which contained either a mean or a standard deviation measurement, only 86 variables (columns) satisfied this criterion out of the 561 original columns. With the addition of 3 factor/ID columns (subjectID, activityID, activity), the final dimensions of the TidyDataSet becomes:  180 rows x 89 columns.
