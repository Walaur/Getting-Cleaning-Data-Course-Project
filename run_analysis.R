#Reading every required file into R
features <- read.table("./UCI HAR Dataset/features.txt")
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")
train <- read.table("./UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
test <- read.table("./UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")

#Appropriately labels the data set with descriptive variable names including labels, activity and subject information to train data
colnames(train) <- features$V2
train$activity <- y_train$V1
train$subject <- subject_train$V1

#Appropriately labels the data set with descriptive variable names including labels, activity and subject information to test data
colnames(test) <- features$V2
test$activity <- y_test$V1
test$subject <- subject_test$V1

#Merges the training and the test sets to create one data set
big_data <- rbind(test, train)

#Extracts only the measurements on the mean and standard deviation for each measurement
mean_std_index <- grep("std\\(|mean\\(", features$V2)
mean_std_data <- big_data[, mean_std_index]

#Uses descriptive activity names to name the activities in the data set
mean_std_data$activity <- factor(big_data$activity, labels= activity_labels$V2)
mean_std_data$subject <- factor(big_data$subject)

#From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject
tidy_data <- aggregate( . ~ subject + activity, data = mean_std_data, FUN = mean)
write.table(tidy_data, file = "tidydata.txt", row.names = FALSE)
