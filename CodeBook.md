#Codebook

##General information

Author: Johannes Marais  
Course: Getting and Cleaning Data  
Submitted: 20 August 2015  

##Raw Data Source
The raw data was obtained from the  [UCI machine learning website](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) and here is a link to [download the data.](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip). All the information and measurement techniques from the raw dataset can be obtained from these links,

##Summarised dataset
The summarised dataset can be found in the repository and is called summaryDataSet.txt. The README.md has instructions on how to open this dataset in R. 

The raw data (see Raw Data Source above) was merged into a single dataframe from the train and test data sets. Only the standard deviation and means of the measured data was kept. The average was then taken of these means and standard deviation data per subject and activity type. In the end we are left with 180 observations/rows. (30 subjects x 6 activities)  

##Variables  

The variables in the summarised dataset are described below. Only the standard deviations and means of the variables were given in the summarised dataset. The summarised dataset also shows the activityName and subject variable. The rows are observations of the average measurements for a subject doing an activity.

###Subjects

There are 30 subjects and is labeled from 1-30 in the raw and summarised dataset. No other information was supplied on the subjects except that their ages ranged from 19-48 years.

### Activity Names

The activity numbers were remapped from the original raw data to a descriptive activity name. There are six activities in total. This mapping can be found in the activity_labels.txt file in the raw dataset. The table below also gives the mapping that was used for summarised dataset.  

Activity Number | Activity Name
--- | ---
1 | WALKING
2 | WALKING_UPSTAIRS
3 | WALKING_DOWNSTAIRS
4 | SITTING
5 | STANDING
6 | LAYING

###Mean and Standard Deviation variable names  

The variable names were changed from the raw data to more descriptive varialbe names. This mapping with the old and new variable names are shown in the following table:   

Original variable name from the Raw dataset | Renamed variable name from the Summarized dataset
---- | ----
tBodyAcc-mean()-X |  timeBodyAccelerometer-mean()-X
tBodyAcc-mean()-Y  |  timeBodyAccelerometer-mean()-Y
tBodyAcc-mean()-Z  |  timeBodyAccelerometer-mean()-Z
tBodyAcc-std()-X  |  timeBodyAccelerometer-StandardDeviation()-X
tBodyAcc-std()-Y  |  timeBodyAccelerometer-StandardDeviation()-Y
tBodyAcc-std()-Z  |  timeBodyAccelerometer-StandardDeviation()-Z
tGravityAcc-mean()-X  |  timeGravityAccelerometer-mean()-X
tGravityAcc-mean()-Y  |  timeGravityAccelerometer-mean()-Y
tGravityAcc-mean()-Z  |  timeGravityAccelerometer-mean()-Z
tGravityAcc-std()-X  |  timeGravityAccelerometer-StandardDeviation()-X
tGravityAcc-std()-Y  |  timeGravityAccelerometer-StandardDeviation()-Y
tGravityAcc-std()-Z  |  timeGravityAccelerometer-StandardDeviation()-Z
tBodyAccJerk-mean()-X  |  timeBodyAccelerometerJerk-mean()-X
tBodyAccJerk-mean()-Y  |  timeBodyAccelerometerJerk-mean()-Y
tBodyAccJerk-mean()-Z  |  timeBodyAccelerometerJerk-mean()-Z
tBodyAccJerk-std()-X  |  timeBodyAccelerometerJerk-StandardDeviation()-X
tBodyAccJerk-std()-Y  |  timeBodyAccelerometerJerk-StandardDeviation()-Y
tBodyAccJerk-std()-Z  |  timeBodyAccelerometerJerk-StandardDeviation()-Z
tBodyGyro-mean()-X  |  timeBodyGyroscope-mean()-X
tBodyGyro-mean()-Y  |  timeBodyGyroscope-mean()-Y
tBodyGyro-mean()-Z  |  timeBodyGyroscope-mean()-Z
tBodyGyro-std()-X  |  timeBodyGyroscope-StandardDeviation()-X
tBodyGyro-std()-Y  |  timeBodyGyroscope-StandardDeviation()-Y
tBodyGyro-std()-Z  |  timeBodyGyroscope-StandardDeviation()-Z
tBodyGyroJerk-mean()-X  |  timeBodyGyroscopeJerk-mean()-X
tBodyGyroJerk-mean()-Y  |  timeBodyGyroscopeJerk-mean()-Y
tBodyGyroJerk-mean()-Z  |  timeBodyGyroscopeJerk-mean()-Z
tBodyGyroJerk-std()-X  |  timeBodyGyroscopeJerk-StandardDeviation()-X
tBodyGyroJerk-std()-Y  |  timeBodyGyroscopeJerk-StandardDeviation()-Y
tBodyGyroJerk-std()-Z  |  timeBodyGyroscopeJerk-StandardDeviation()-Z
tBodyAccMag-mean()  |  timeBodyAccelerometerMagnitude-mean()
tBodyAccMag-std()  |  timeBodyAccelerometerMagnitude-StandardDeviation()
tGravityAccMag-mean()  |  timeGravityAccelerometerMagnitude-mean()
tGravityAccMag-std()  |  timeGravityAccelerometerMagnitude-StandardDeviation()
tBodyAccJerkMag-mean()  |  timeBodyAccelerometerJerkMagnitude-mean()
tBodyAccJerkMag-std()  |  timeBodyAccelerometerJerkMagnitude-StandardDeviation()
tBodyGyroMag-mean()  |  timeBodyGyroscopeMagnitude-mean()
tBodyGyroMag-std()  |  timeBodyGyroscopeMagnitude-StandardDeviation()
tBodyGyroJerkMag-mean()  |  timeBodyGyroscopeJerkMagnitude-mean()
tBodyGyroJerkMag-std()  |  timeBodyGyroscopeJerkMagnitude-StandardDeviation()
fBodyAcc-mean()-X  |  frequencyBodyAccelerometer-mean()-X
fBodyAcc-mean()-Y  |  frequencyBodyAccelerometer-mean()-Y
fBodyAcc-mean()-Z  |  frequencyBodyAccelerometer-mean()-Z
fBodyAcc-std()-X  |  frequencyBodyAccelerometer-StandardDeviation()-X
fBodyAcc-std()-Y  |  frequencyBodyAccelerometer-StandardDeviation()-Y
fBodyAcc-std()-Z  |  frequencyBodyAccelerometer-StandardDeviation()-Z
fBodyAccJerk-mean()-X  |  frequencyBodyAccelerometerJerk-mean()-X
fBodyAccJerk-mean()-Y  |  frequencyBodyAccelerometerJerk-mean()-Y
fBodyAccJerk-mean()-Z  |  frequencyBodyAccelerometerJerk-mean()-Z
fBodyAccJerk-std()-X  |  frequencyBodyAccelerometerJerk-StandardDeviation()-X
fBodyAccJerk-std()-Y  |  frequencyBodyAccelerometerJerk-StandardDeviation()-Y
fBodyAccJerk-std()-Z  |  frequencyBodyAccelerometerJerk-StandardDeviation()-Z
fBodyGyro-mean()-X  |  frequencyBodyGyroscope-mean()-X
fBodyGyro-mean()-Y  |  frequencyBodyGyroscope-mean()-Y
fBodyGyro-mean()-Z  |  frequencyBodyGyroscope-mean()-Z
fBodyGyro-std()-X  |  frequencyBodyGyroscope-StandardDeviation()-X
fBodyGyro-std()-Y  |  frequencyBodyGyroscope-StandardDeviation()-Y
fBodyGyro-std()-Z  |  frequencyBodyGyroscope-StandardDeviation()-Z
fBodyAccMag-mean()  |  frequencyBodyAccelerometerMagnitude-mean()
fBodyAccMag-std()  |  frequencyBodyAccelerometerMagnitude-StandardDeviation()
fBodyBodyAccJerkMag-mean()  |  frequencyBodyBodyAccelerometerJerkMagnitude-mean()
fBodyBodyAccJerkMag-std()  |  frequencyBodyBodyAccelerometerJerkMagnitude-StandardDeviation()
fBodyBodyGyroMag-mean()  |  frequencyBodyBodyGyroscopeMagnitude-mean()
fBodyBodyGyroMag-std()  |  frequencyBodyBodyGyroscopeMagnitude-StandardDeviation()
fBodyBodyGyroJerkMag-mean()  |  frequencyBodyBodyGyroscopeJerkMagnitude-mean()
fBodyBodyGyroJerkMag-std()  |  frequencyBodyBodyGyroscopeJerkMagnitude-StandardDeviation()


##Resources
1. [Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013.](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

