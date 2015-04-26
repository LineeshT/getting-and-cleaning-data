
library(dplyr)

##Following are part of step 1 of the assignment.
##   Merges the training and the test sets to create one data set.
##----------------------------------------------------------------

#Load activity_labels from the current directory
activity_label <- read.table("activity_labels.txt")
names(activity_label) <- c("ID","Name")

#Load features from the current directory
features <- read.table("features.txt")
names(features) <- c("ID","Name")

#Switch to test directory
setwd(".\\test")

#Load subject_test from the current directory
subject_test <- read.table("subject_test.txt")
names(subject_test) <- c("Subject_ID")

#Load X_test from the current directory
X_test <- read.table("X_test.txt")
names(X_test) <- c(list(features[,2]))[[1]]

#Load y_test from the current directory
y_test <- read.table("y_test.txt")
names(y_test) <- c("Activity_ID")

#Switch to train directory
setwd("..")
setwd(".\\train")

#Load subject_train from the current directory
subject_train <- read.table("subject_train.txt")
names(subject_train) <- c("Subject_ID")

#Load X_train from the current directory
X_train <- read.table("X_train.txt")
names(X_train) <- c(list(features[,2]))[[1]]

#Load y_train from the current directory
y_train <- read.table("y_train.txt")
names(y_train) <- c("Activity_ID")

#Switch to root (UCI HAR Dataset) directory
setwd("..")


#Combine subject, activity and data for "test"
#i.e. subject_test, y_test and X_test
testdata <- cbind(subject_test, y_test, X_test)

#Combine subject, activity and data for "train"
#i.e. subject_train, y_train and X_train
traindata <- cbind(subject_train, y_train, X_train)

#Combine the test and train data sets
combineddataset <- rbind(testdata, traindata)

##We have completed step 1 now.
##-----------------------------


##Following are part of step 2 of the assignment.
##   Extracts only the measurements on the mean and standard deviation for each measurement. 
##------------------------------------------------------------------------------------------

#Following mean values (from features.txt) are considered: 1,2,3, 41, 42, 43, 81, 82, 83, 121, 122, 123, 161, 162, 163, 201, 214, 227, 240, 253
#Following std values (from features.txt) are considered : 4, 5, 6, 44, 45, 46, 84, 85, 86, 124, 125, 126, 164, 165, 166, 202, 215, 228, 241, 254
narrowset <- combineddataset[,c(1,2,3, 4, 5, 43, 44, 45, 83, 84, 85, 123, 124, 125, 163, 164, 165, 203, 216, 229, 242, 255, 6, 7, 8, 46, 47, 48, 86, 87, 88, 126, 127, 128, 166, 167, 168, 204, 217, 230, 243, 256)]

##We have completed step 2 now.
##-----------------------------

##Following are part of step 3 of the assignment.
##   Uses descriptive activity names to name the activities in the data set.
##--------------------------------------------------------------------------

#Replace the Acticvity_Id with Activity_Name from the activity_label
narrowset$Activity_ID[narrowset$Activity_ID == "1"] <- as.character(activity_label[1,2])
narrowset$Activity_ID[narrowset$Activity_ID == "2"] <- as.character(activity_label[2,2])
narrowset$Activity_ID[narrowset$Activity_ID == "3"] <- as.character(activity_label[3,2])
narrowset$Activity_ID[narrowset$Activity_ID == "4"] <- as.character(activity_label[4,2])
narrowset$Activity_ID[narrowset$Activity_ID == "5"] <- as.character(activity_label[5,2])
narrowset$Activity_ID[narrowset$Activity_ID == "6"] <- as.character(activity_label[6,2])

#Change the column name to Activity_Name
names(narrowset) <- replace(names(narrowset),2,"Activity_Name")

##We have completed step 3 now.
##-----------------------------

##Following are part of step 4 of the assignment.
##   Appropriately labels the data set with descriptive variable names. 
##---------------------------------------------------------------------

#Rename the variables with descriptive name
names <- gsub("[()]", "", names(narrowset))
names(narrowset) <- gsub("[-]", "_", names)

##We have completed step 4 now.
##-----------------------------

##Following are part of step 5 of the assignment.
##   From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
##-------------------------------------------------------------------------------------------------------------------------------------------------

#Aggregate measurements using activity and subject
aggregatenarrow <- aggregate(narrowset[, 3:ncol(narrowset)], by=list(Subject_ID = narrowset$Subject_ID, Activity_Name = narrowset$Activity_Name), mean)

#Write the result to a file
write.table(aggregatenarrow, "HAR_Dataset_Result.txt", row.name=FALSE)
                                              
##We have completed step 5 now.
##-----------------------------
