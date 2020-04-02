library(dplyr)

##collecting data
features <- read.csv('C:\\Users\\r3\\Desktop\\UCI HAR Dataset\\features.txt', col.names = c("n","functions"))

##naming the data base
activity_labels <- read.table("C:\\Users\\r3\\Desktop\\UCI HAR Dataset\\activity_labels.txt", col.names = c("code", "activity"))

subject_test <- read.table("C:\\Users\\r3\\Desktop\\UCI HAR Dataset\\test\\testsubject_test.txt", col.names = "subject")

x_test <- read.table("C:\\Users\\r3\\Desktop\\UCI HAR Dataset\\X_test.txt", col.names = features$functions)

y_test <- read.table("C:\\Users\\r3\\Desktop\\UCI HAR Dataset\\y_test.txt", col.names = "code")

subject_train <- read.table("C:\Users\r3\Desktop\UCI HAR Dataset\train\\trainsubject_train.txt", col.names = "subject")

x_train <- read.table("C:\Users\r3\Desktop\UCI HAR Dataset\train\\X_train.txt", col.names = features$functions)

y_train <- read.table("C:\Users\r3\Desktop\UCI HAR Dataset\train\\y_train.txt", col.names = "code")

