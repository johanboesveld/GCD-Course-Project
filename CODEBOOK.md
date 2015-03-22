# Codebook for the "Getting and Cleaning Data" course project
  author: Johan Boesveld  			date: 22 march 2015
	
##Experimental design and background 
An experiment "Human Activity Recognition Using Smartphones") has been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. For machinelearning purposes the obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

##Raw data: 
We will use the "Human Activity Recognition Using Smartphones Data Set" from the Machine Learning Repository, a full description can be found here: (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)
This data-set can be downloaded (in the form of a zip-file) from: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
Unzipping this file will create a directory called "UCI HAR Dataset"
**note: To succesfully run the "run_analysis.R" script, the working directory has to be set to this "UCI HAR Dataset" directory!!**

Each observation contains :
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.


##Processed data: 
The script run_analysis.R processe the raw datasets to create a tidy data set:

- The training and test data, subject ids and activity ids are merged into a single data set. Descriptive variable names are added. 

- Extracts only the measurements on the mean and standard deviation for each observation.(see note)

- Activity labels are replaced by descriptive activity names.

- The data set is appropriately labeled with descriptive variable names.

- This subset from the original dataset (with only mean and standard deviations) is used to create a tidy data-set where numeric variables are averaged for each activity and each subject. 

- This tidy dataset is written to a file called tiny_dataset.txt

*note: from every measured signal in the experiment, a lot of variables were created in the dataset, for this project I will extract only the mean and standard deviation for each measurement, to be exact: the features (variables) that end on mean() and std()*

##Variables
The new tidy data set contains 68 variables:

- Subject: identifier of who carried out the experiment, values: 1-30.
- Activity: label describing the performed activity,values: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
- 66 variables containing the mean for each activity and each subject of the original variables which names ended on mean() and std(). values: numeric value, normalized and bounded within [-1,1]

