## Load libraries
library(dplyr)

## Load dataset
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url, destfile = "UCI HAR dataset.zip", method="curl")
unzip("UCI HAR dataset.zip")

## Read relevant files
## Note: this follow's one of the mentor's advice to not include the inertial signals
subject_test <- read.csv("./UCI HAR Dataset/test/subject_test.txt")
subject_train <- read.csv("./UCI HAR Dataset/train/subject_train.txt")
data_test <- read.table("./UCI HAR Dataset/test/X_test.txt", header=TRUE)
data_train <- read.table("./UCI HAR Dataset/train/X_train.txt", header=TRUE)
activity_test <- read.csv("./UCI HAR Dataset/test/y_test.txt")
activity_train <- read.csv("./UCI HAR Dataset/train/y_train.txt")
features <- read.table("./UCI HAR Dataset/features.txt")
activities <- read.table("./UCI HAR Dataset/activity_labels.txt")

## Rename columns/factors and merge train and test dataset rows
names_int <- as.character(features[,2])
names <- make.names(names_int, unique=TRUE)
colnames(data_train) <- names
colnames(data_test) <- names
raw_data <- rbind(data_train, data_test)

colnames(subject_train) <- "subject"
colnames(subject_test) <- "subject"
sub <- (rbind(subject_train, subject_test))
sub$subject <- as.factor(sub$subject)

colnames(activity_train) <- "activity"
colnames(activity_test) <- "activity"
act <- rbind(activity_train, activity_test)
act$activity <- as.factor(act$activity)

## Give the activities decriptive names
levels(act$activity) <- c(levels(act$activity), levels(activities[,2]))
act$activity[act$activity=="1"] <- "WALKING"
act$activity[act$activity=="2"] <- "WALKING_UPSTAIRS"
act$activity[act$activity=="3"] <- "WALKING_DOWNSTAIRS"
act$activity[act$activity=="4"] <- "SITTING"
act$activity[act$activity=="5"] <- "STANDING"
act$activity[act$activity=="6"] <- "LAYING"
act$activity <- factor(act$activity)

## Merge columns to create complete dataset
data <- cbind(sub, act, raw_data)

## Only keep mean and sd columns
## Note: This only includes columns that are clearly means of other data and also have a corresponding
## sd column, not columns that have "mean" in other parts of their name
data_ms <- select(data, c(subject, activity, grep("mean", colnames(data)), grep("std", colnames(data))))
dataset1 <- select(data_ms, -grep("meanF", colnames(data_ms)))

## Rename variables
## Note: I tried to give the columns even more meaningful names, but the names became unwieldily long,
## especially for dataset2. Also, I figured that the abbreviations might actually be consensus in that
## field of research, so it wouldn't make sense to change them beyond recognition. I have therefore
## opted to just clean up the last part of the name and add "mean of" down below for the second dataset.
names(dataset1) <- sub("mean..", "mean", names(dataset1))
names(dataset1) <- sub("std..", "sd", names(dataset1))

## Aggregate table to create independent dataset
dataset2 <- aggregate(.~subject+activity,data=dataset1, FUN=mean)

## Adjust column names of the independent dataset
names(dataset2) <- sub("fB", "mean of fB", names(dataset2))
names(dataset2) <- sub("tB", "mean of tB", names(dataset2))
names(dataset2) <- sub("tG", "mean of tG", names(dataset2))

## Write dataset2 to file
write.table(dataset2, "dataset2.txt", row.name=FALSE)









