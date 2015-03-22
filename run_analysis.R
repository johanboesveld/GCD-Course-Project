## run_analysis.R
## script made by Johan Boesveld for the course project in the "Getting and Cleaning Data" course.

## This script does the following:
## 1.Merges the training and the test sets to create one data set.
## 2.Extracts only the measurements on the mean and standard deviation for each measurement. 
## 3.Uses descriptive activity names to name the activities in the data set
## 4.Appropriately labels the data set with descriptive variable names. 
## 5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## ========================================================

## Load and Attach Libraries
library("data.table")
library("plyr")
library("dplyr")

## Read the original test- and training-datasets into dataframes
X_test <- read.table("test/X_test.txt")
y_test <- read.table("test/y_test.txt")
subject_test <- read.table("test/subject_test.txt")

X_train <- read.table("train/X_train.txt")
y_train <- read.table("train/y_train.txt")
subject_train <- read.table("train/subject_train.txt")

## Read the activity_names and features into dataframes
activity_names <- read.table("activity_labels.txt")
features<- read.table("features.txt",colClasses = c("character"))

## Merge train and test dataset into one dataframe
train<-cbind(subject_train,cbind(y_train, X_train))
test<-cbind(subject_test,cbind(y_test, X_test))
complete <- rbind(train, test)

## Create a vector with columnames from the features + 2 for subject and activity
## Add columnnames to the constructed dataframe
variable_names <- rbind("Subject",rbind("Activity",features))[,2]
names(complete) <- variable_names

## turn data.frame into data.table for easier use
complete_DT <- data.table(complete)

## select only measurements on the mean and the standard deviation + the colums Subject and Id
selected_data <- select(complete_DT,contains("mean()"),contains("std()"),matches("Subject"),matches("Activity"))

## replace activitynumber with descriptive activityname
labeled_data <- mutate(selected_data,Activity=activity_names[Activity,2])

## create a tidy dataset with the average of each variable for each subject and each activity
## (split dataframe by Subject and Activity and calculate for every subset columnwise the mean)
tidy_data<-ddply(labeled_data, c("Subject","Activity"), numcolwise(mean))

## and finally write this tidy dataset to tidy_dataset.txt
write.table(tidy_data, file = "tidy_dataset.txt", row.name=FALSE)