# Getting-and-Cleaning-Data-Course-Project
Course Project for the Getting and Cleaning Data Course (John Hopkins University)

##This repo includes the following files:
-this README.md file
-one R script called run_analysis.R 
-the accompanying CodeBook.md that describes the variables, the data, and the transformations performed to clean up the data
 
##Project Description
The goal of this project is to show my ability to collect, work with, and clean a data set. In this project I will prepare tidy data that can be used for later analysis.  
The R script called run_analysis.R that does the following:

-Merges the training and the test sets to recreate the complete data set.
-Extracts only the measurements on the mean and standard deviation for each measurement.(see note) 
-Uses descriptive activity names to name the activities in the data set
-Appropriately labels the data set with descriptive variable names. 
-From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

note: *From every measured signal in the experiment, a lot of variables were created in the dataset, for this project I will extract only the mean and standard deviation, in this case the features (variables) that end on -mean() and -std()*

##Processing steps
- download the data-set from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
-unzip this file, this will create a directory called "UCI HAR Dataset"
-Open R-studio and set the working directory to the "UCI HAR Dataset" directory
-Run the R script "run_analysis.R" you find in this repo, this will create a tidy dataset "tidyresult."with the average of each variable for each activity and each subject.

