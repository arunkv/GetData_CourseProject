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

library(dplyr)
library(tidyr)

# The directory in the current folder containing the source data
dataDir <- "./UCI HAR Dataset/"

# Load the activity labels
activityLabels <- read.table(paste0(dataDir, "activity_labels.txt"),
                             col.names = c("activity.id", "activity.label"))
activityLabels <- tbl_df(activityLabels)

# Load the training feature names
features <- read.table(paste0(dataDir, "features.txt"),
                       col.names = c("feature.id", "feature.name"))

# Load the training data and label the columns with the training feature names
if (!exists("trainingData")) {
    trainingData <- read.table(paste0(dataDir,"train/X_train.txt"),
                               col.names = features$feature.name)
    trainingData <- tbl_df(trainingData)
}

# Load the training labels
trainingLabels <- read.table(paste0(dataDir, "train/y_train.txt"),
                             col.names = "activity.id")
