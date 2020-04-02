library(dplyr)

features <- read.csv('C:\\Users\\r3\\Desktop\\UCI HAR Dataset\\features.txt', col.names = c("n","functions"))

activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt", col.names = c("code", "activity"))

subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt", col.names = "subject")
