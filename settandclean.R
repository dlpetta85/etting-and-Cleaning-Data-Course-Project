library(dplyr)

##naming the data base
features <- read.table('C:\\Users\\r3\\Desktop\\UCI HAR Dataset\\features.txt', col.names = c("n","functions"))

activity_labels <- read.table("C:\\Users\\r3\\Desktop\\UCI HAR Dataset\\activity_labels.txt", col.names = c("code", "activity"))

subject_test <- read.table("C:\\Users\\r3\\Desktop\\UCI HAR Dataset\\test\\subject_test.txt", col.names = "subject")

x_test <- read.table("C:\\Users\\r3\\Desktop\\UCI HAR Dataset\\test\\X_test.txt", col.names = features$functions)

y_test <- read.table("C:\\Users\\r3\\Desktop\\UCI HAR Dataset\\test\\y_test.txt", col.names = "code")

subject_train <- read.table("C:\\Users\\r3\\Desktop\\UCI HAR Dataset\\train\\subject_train.txt", col.names = "subject")

x_train <- read.table("C:\\Users\\r3\\Desktop\\UCI HAR Dataset\\train\\X_train.txt", col.names = features$functions)

y_train <- read.table("C:\\Users\\r3\\Desktop\\UCI HAR Dataset\\train\\y_train.txt", col.names = "code")


## 1 - Merges the training and the test sets to create one data set.
a <- rbind(x_train, x_test)
b <- rbind(y_train, y_test)
Subject <- rbind(subject_train, subject_test)
Merged_Data <- cbind(Subject, b, a)


## 2 - Extracts only the measurements on the mean and standard deviation for each measurement.
tidydata <- Merged_Data %>% select(subject, code, contains("mean"), contains("std"))


## 3 - Uses descriptive 'activity_labels' names to name the 'activity_labels' in the data set
tidydata$code <- activity_labels[tidydata$code, 2]


## 4- Appropriately labels the data set with descriptive variable names.



## 5 - From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


