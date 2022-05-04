# Assignment: Getting and Cleaning Data Course Project

# The purpose of this project is to demonstrate your ability to collect, work
# with, and clean a data set. The goal is to prepare tidy data that can be used
# for later analysis.

# GitHub and Stack Overflow were consulted extensively for this project. Any
# similarities in code were not intended but could be could be artifacts of
# the code observed from these repositories. 

# Load neccessary libraries for code to function properly

library(tidyverse)
library(readr)
library(data.table)

# First measurable: Merge the training and the test sets to create one data set.

# Set working directory

setwd("C:/User/Desktop/Temp")

# Unzip data package from working directory

unzip("getdata_projectfiles_UCI HAR Dataset.zip")

# Read in test data from data package

X_test <- read.table("UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")

# Read in train data from data package

X_train <- read.table("UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")

# Read in features and activity_labels from data package

features <- read.table("UCI HAR Dataset/features.txt")
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")

# Merge train and test data into comprehensive dataset

X <- rbind(X_test, X_train)
y <- rbind(y_test, y_train)
subject <- rbind(subject_test, subject_train)

# Second measuraeable: Extracts only the measurements on the mean and standard  
# deviation for each measurement.

# Fetch and subset only variables from features containing mean and standard
# deviation measurements

index <- grep ("mean\\(\\)|std\\(\\)", features[,2])
X <- X [,index]

# Third measureable: Uses descriptive activity names to name the activities in
# the data set.

# Replace numeric values from feature with desciptions from activity_labels.txt

y[,1] <- activity_labels[y[,1],2]
names <- features[index,2]
names(X) <- names

# Fourth measureable: Appropriately labels the data set with descriptive
# variable names.

# Update column headers with descriptive variable names

names(subject) <- "Subject"
names(y) <- "Activity"
cleaned_data <- cbind(subject, y, X)

# Fifth measureable: From the data set in step 4, creates a second, independent
# tidy data set with the average of each variable for each activity and each
# subject.

# Create Tidy.txt data set with subjects, activities, means, and standard
# deviations for each subject and activity pair

cleaned_data <- data.table(cleaned_data)
tidy_data <- cleaned_data[, lapply(.SD, mean), by = 'Subject,Activity']
write.table(tidy_data, file = "Tidy.txt", row.names = FALSE)



