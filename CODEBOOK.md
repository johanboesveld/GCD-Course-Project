# Getting-and-Cleaning-Data-Course-Project
Course Project for the Getting and Cleaning Data Course (John Hopkins University)

Original Dataset Description
=========================================
We will use the "Human Activity Recognition Using Smartphones Data Set" from the Machine Learning Repository, the full description can be found here: (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)
The data-set was downloaded in the form of a zip-file from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
and unzipped in a directory called "UCI HAR Dataset"
**To succesfully run the "run_analysis.R" script, the working directory has to be set to this "UCI HAR Dataset" directory!!**

This data-set was built from the recordings of 30 subjects performing activities of daily living (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) while carrying a waist-mounted smartphone with embedded accelerometer and gyroscope. 
.
Each observation contains :
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

For the purpose of Machine Learning the obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

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

