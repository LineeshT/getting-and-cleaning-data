
##Files in the repository:
* README.MD
* CodeBook.MD
* run_analysis.R

##Steps to execute:
Download the run_analysis.R file into a folder
Following file structure is expected for the folder:
	./activity_labels.txt
	./features.txt
	./features_info.txt
	./run_analysis.R
	./test/subject_test.txt
	./test/X_test.txt
	./test/y_test.txt
	./test/Inertial Signals/body_acc_x_test.txt
	./test/Inertial Signals/body_acc_y_test.txt
	./test/Inertial Signals/body_acc_z_test.txt
	./test/Inertial Signals/body_gyro_x_test.txt
	./test/Inertial Signals/body_gyro_y_test.txt
	./test/Inertial Signals/body_gyro_z_test.txt
	./test/Inertial Signals/total_acc_x_test.txt
	./test/Inertial Signals/total_acc_y_test.txt
	./test/Inertial Signals/total_acc_z_test.txt
	./train/subject_train.txt
	./train/X_train.txt
	./train/y_train.txt
	./train/Inertial Signals/body_acc_x_train.txt
	./train/Inertial Signals/body_acc_y_train.txt
	./train/Inertial Signals/body_acc_z_train.txt
	./train/Inertial Signals/body_gyro_x_train.txt
	./train/Inertial Signals/body_gyro_y_train.txt
	./train/Inertial Signals/body_gyro_z_train.txt
	./train/Inertial Signals/total_acc_x_train.txt
	./train/Inertial Signals/total_acc_y_train.txt
	./train/Inertial Signals/total_acc_z_train.txt

The data may be downloaded from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The run_analysis.R explains the steps in detail. Execute this in R. The script creates an output file called "HAR_Dataset_Result.csv". This file contains the average of each selected variable for each activity and each subject.
