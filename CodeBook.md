# Original files

This script uses the following files from the UCI HAR dataset:
- 'features.txt': List of all available features.
- 'activity_labels.txt': Labels each class (1-6) to a specific activity (Walking, Walking Upstairs, Walking Downstairs, Sitting, Standing and Laying).
- 'X_train.txt': Train set.
- 'y_train.txt': Train labels.
- 'subject_train.txt': The subjects that generated the train data.
- 'X_test.txt': Test set.
- 'y_test.txt': Test labels.
- 'subject_test.txt': The subjects that generated the test data.

# Modifications of the original data

* Merging the train and the test sets into a big data set named 'big_data'.
* Extracting only the measurements on the mean and standard deviation for each measurement and storing them into a new data set named 'mean_std_data'.
* Using the 'features.txt' to name all columns from 'big_data'.
* Using the 'activity_labels.txt' to label both 'y_train.txt' and 'y_test.txt' so instead of factors they have descriptive variable names.
* Creating a second, independent tidy data set with the average of each variable for each activity and each subject.

# 'tidydata.txt' description

The first column identifies the subject who performed the activities, range from 1 to 30.
The second column identifies the type of activity performed by the subject when the measurements were taken, options are: Walking, Walking Upstairs, Walking Downstairs, Sitting, Standing and Laying
From the third column to the 68th column, the average of every following measurement is displayed:

tBodyAcc-mean()-X
tBodyAcc-mean()-Y
tBodyAcc-mean()-Z
tBodyAcc-std()-X
tBodyAcc-std()-Y
tBodyAcc-std()-Z
tGravityAcc-mean()-X
tGravityAcc-mean()-Y
tGravityAcc-mean()-Z
tGravityAcc-std()-X
tGravityAcc-std()-Y
tGravityAcc-std()-Z
tBodyAccJerk-mean()-X
tBodyAccJerk-mean()-Y
tBodyAccJerk-mean()-Z
tBodyAccJerk-std()-X
tBodyAccJerk-std()-Y
tBodyAccJerk-std()-Z
tBodyGyro-mean()-X
tBodyGyro-mean()-Y
tBodyGyro-mean()-Z
tBodyGyro-std()-X
tBodyGyro-std()-Y
tBodyGyro-std()-Z
tBodyGyroJerk-mean()-X
tBodyGyroJerk-mean()-Y
tBodyGyroJerk-mean()-Z
tBodyGyroJerk-std()-X
tBodyGyroJerk-std()-Y
tBodyGyroJerk-std()-Z
tBodyAccMag-mean()
tBodyAccMag-std()
tGravityAccMag-mean()
tGravityAccMag-std()
tBodyAccJerkMag-mean()
tBodyAccJerkMag-std()
tBodyGyroMag-mean()
tBodyGyroMag-std()
tBodyGyroJerkMag-mean()
tBodyGyroJerkMag-std()
fBodyAcc-mean()-X
fBodyAcc-mean()-Y
fBodyAcc-mean()-Z
fBodyAcc-std()-X
fBodyAcc-std()-Y
fBodyAcc-std()-Z
fBodyAccJerk-mean()-X
fBodyAccJerk-mean()-Y
fBodyAccJerk-mean()-Z
fBodyAccJerk-std()-X
fBodyAccJerk-std()-Y
fBodyAccJerk-std()-Z
fBodyGyro-mean()-X
fBodyGyro-mean()-Y
fBodyGyro-mean()-Z
fBodyGyro-std()-X
fBodyGyro-std()-Y
fBodyGyro-std()-Z
fBodyAccMag-mean()
fBodyAccMag-std()
fBodyBodyAccJerkMag-mean()
fBodyBodyAccJerkMag-std()
fBodyBodyGyroMag-mean()
fBodyBodyGyroMag-std()
fBodyBodyGyroJerkMag-mean()
fBodyBodyGyroJerkMag-std()
