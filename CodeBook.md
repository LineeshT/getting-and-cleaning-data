#Codebook for HAR Dataset

###Variables:
* Subject_ID : ID of the subjects. Values : 1..6
* Activity_Name : Name of the activities. Values : WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
* tBodyAcc_mean_X : Mean time domain body acceleration in X dimension
* tBodyAcc_mean_Y : Mean time domain body acceleration in Y dimension
* tBodyAcc_mean_Z : Mean time domain body acceleration in Z dimension
* tGravityAcc_mean_X : Mean time domain gravity acceleration in X dimension
* tGravityAcc_mean_Y : Mean time domain gravity acceleration in Y dimension
* tGravityAcc_mean_Z : Mean time domain gravity acceleration in Z dimension
* tBodyAccJerk_mean_X : Mean time domain body acceleration jerk in X dimension
* tBodyAccJerk_mean_Y : Mean time domain body acceleration jerk in Y dimension
* tBodyAccJerk_mean_Z : Mean time domain body acceleration jerk in Z dimension
* tBodyGyro_mean_X : Mean time domain body gyro in X dimension
* tBodyGyro_mean_Y : Mean time domain body gyro in Y dimension
* tBodyGyro_mean_Z : Mean time domain body gyro in Z dimension
* tBodyGyroJerk_mean_X : Mean time domain body gyro jerk in X dimension
* tBodyGyroJerk_mean_Y : Mean time domain body gyro jerk in Y dimension
* tBodyGyroJerk_mean_Z : Mean time domain body gyro jerk in Z dimension
* tBodyAccMag_mean : Mean time domain body acceleration magnitude 
* tGravityAccMag_mean : Mean time domain gravity acceleration magnitude 
* tBodyAccJerkMag_mean : Mean time domain body acceleration jerk magnitude 
* tBodyGyroMag_mean : Mean time domain body gyro magnitude
* tBodyGyroJerkMag_mean : Mean time domain  body gyro jerk magnitude
* tBodyAcc_std_X : Time domain standard deviation of body acceleration in X dimension
* tBodyAcc_std_Y : Time domain standard deviation of body acceleration in Y dimension
* tBodyAcc_std_Z : Time domain standard deviation of body acceleration in Z dimension
* tGravityAcc_std_X : Time domain standard deviation of gravity acceleration in X dimension
* tGravityAcc_std_Y : Time domain standard deviation of gravity acceleration in Y dimension
* tGravityAcc_std_Z : Time domain standard deviation of gravity acceleration in Z dimension
* tBodyAccJerk_std_X : Time domain standard deviation of body acceleration jerk in X dimension
* tBodyAccJerk_std_Y : Time domain standard deviation of body acceleration jerk in Y dimension
* tBodyAccJerk_std_Z : Time domain standard deviation of body acceleration jerk in Z dimension
* tBodyGyro_std_X : Time domain standard deviation of body gyro in X dimension
* tBodyGyro_std_Y : Time domain standard deviation of body gyro in Y dimension
* tBodyGyro_std_Z : Time domain standard deviation of body gyro in Z dimension
* tBodyGyroJerk_std_X : Time domain standard deviation of body gyro jerk in X dimension
* tBodyGyroJerk_std_Y : Time domain standard deviation of body gyro jerk in Y dimension
* tBodyGyroJerk_std_Z : Time domain standard deviation of body gyro jerk in Z dimension
* tBodyAccMag_std : Time domain standard deviation of body acceleration magnitude
* tGravityAccMag_std : Time domain standard deviation of gravity accelaration magnitude
* tBodyAccJerkMag_std : Time domain standard deviation of body acceleration jerk magnitide
* tBodyGyroMag_std : Time domain standard deviation of body gyro magnitude
* tBodyGyroJerkMag_std : Time domain standard deviation of body gyro jerk magnitude

###Data
We use the following data files:
* activity_labels.txt : List of activities
* features.txt : List of features captured/calculated
* subject_test.txt : Subjects involved in the test
* X_test.txt : Feature data for the test data set
* y_test.txt : Activity dat for the test data set
* subject_train.txt : Subjects involved in the train
* X_train.txt : Feature data for the train data set
* y_train.txt : Activity dat for the train data set

Values are aggregated for 30 subjects and 6 activities, giving 180 rows in the result.
