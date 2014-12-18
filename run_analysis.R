# Copyright 2014 Arun K Viswanathan
# All rights reserved

# Getting and Cleaning Data
# Course Project

# Cleanup of data from wearable devices
# http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

# This script assumes that the data has been downloaded and is available in the
# current working directory with the original structure:
# ./UCI HAR Dataset:
#     README.txt           features.txt         test/
#     activity_labels.txt  features_info.txt    train/
#     
# ./UCI HAR Dataset/test:
#     Inertial Signals/ X_test.txt        subject_test.txt  y_test.txt
# 
# ./UCI HAR Dataset/test/Inertial Signals:
#     body_acc_x_test.txt   body_gyro_x_test.txt  total_acc_x_test.txt
#     body_acc_y_test.txt   body_gyro_y_test.txt  total_acc_y_test.txt
#     body_acc_z_test.txt   body_gyro_z_test.txt  total_acc_z_test.txt
# 
# ./UCI HAR Dataset/train:
#     Inertial Signals/  X_train.txt        subject_train.txt  y_train.txt
# 
# ./UCI HAR Dataset/train/Inertial Signals:
#     body_acc_x_train.txt   body_gyro_x_train.txt  total_acc_x_train.txt
#     body_acc_y_train.txt   body_gyro_y_train.txt  total_acc_y_train.txt
#     body_acc_z_train.txt   body_gyro_z_train.txt  total_acc_z_train.txt

# The directory in the current folder containing the source data
dataDir <- "./UCI HAR Dataset/"

# Load the training feature names and eliminate special characters like 
# parantheses, commas and dashes, in the name. Also fix typos like "BodyBody"
features <- read.table(paste0(dataDir, "features.txt"),
                       col.names = c("feature_id", "orig_feature_name"))
features$feature_name <- features$orig_feature_name
features$feature_name <- gsub("\\(\\)", "", features$feature_name)
features$feature_name <- gsub("\\(", "_", features$feature_name)
features$feature_name <- gsub("\\)", "", features$feature_name)
features$feature_name <- gsub(",", "_", features$feature_name)
features$feature_name <- gsub("-", "_", features$feature_name)
features$feature_name <- gsub("BodyBody", "Body", features$feature_name)

# Get the set of features that are of interest to us - mean and std 
# Note: It is assumed that variables like "angle(X,gravityMean)" are not means;
#       hence a case-sensitive search
featuresOfInterest <- c(grep("mean", features$feature_name, value=TRUE), 
                        grep("std", features$feature_name, value=TRUE))

# Load the training data and label the columns with the training feature names
# Only keep the features of interest
trainingData <- read.table(paste0(dataDir,"train/X_train.txt"),
                           col.names = features$feature_name)
trainingData <- trainingData[, featuresOfInterest]

# Load the training subjects
trainingSubjects <- read.table(paste0(dataDir, "train/subject_train.txt"),
                               col.names = "subject_id")

# Load the training activity IDs
trainingActivities <- read.table(paste0(dataDir, "train/y_train.txt"),
                                 col.names = "activity_id")

# Combine the training data with the subject and the activity ID
combinedTrainingData <- cbind(trainingData, trainingSubjects, trainingActivities)

# Load the test data and label the columns with the training feature names
# Only keep the features of interest
testData <- read.table(paste0(dataDir,"test/X_test.txt"),
                       col.names = features$feature_name)
testData <- testData[, featuresOfInterest]

# Load the test subjects
testSubjects <- read.table(paste0(dataDir, "test/subject_test.txt"),
                           col.names = "subject_id")

# Load the test activities
testActivities <- read.table(paste0(dataDir, "test/y_test.txt"),
                             col.names = "activity_id")

# Combine the test data with the subject and the activity ID
combinedTestData <- cbind(testData, testSubjects, testActivities)

# Combine the tidy training and test data
combinedData <- rbind(combinedTrainingData, combinedTestData)

# Load the activity labels and merge them with the tidy data, removing the 
# activity ID in the process
activityLabels <- read.table(paste0(dataDir, "activity_labels.txt"),
                             col.names = c("activity_id", "activity_name"))
combinedData <- merge(activityLabels, combinedData, by = "activity_id")
combinedData$activity_id <- NULL

# Creates a second, independent tidy data set with the average of each variable
# for each activity and each subject
library(dplyr)
tidyData <- tbl_df(combinedData) %>%    
    group_by(activity_name, subject_id) %>%
    summarise_each(funs(mean))

# Write out the tidy data to measurements.txt in the current directory
write.table(tidyData, file="measurements.txt", row.names=FALSE)

