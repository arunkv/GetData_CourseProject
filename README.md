GetData\_CourseProject
=====================

> Copyright 2014 Arun K Viswanathan
> All rights reserved

## Overview
Course project for the Coursera course *Getting and Cleaning Data*
See [instructions here](https://class.coursera.org/getdata-016/human_grading/view/courses/973758/assessments/3/submissions)

## Data Source
The source data was obtained from 
[here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip). 
Detailed descriptions of the source data are available 
[here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

## Data Cleanup
The script run\_analysis.R cleans up the data via the following steps:

1. Merges the training and the test sets to create one data set.

2. Extracts only the measurements on the mean and standard deviation for each 
measurement. 

3. Uses descriptive activity names to name the activities in the data set

4. Appropriately labels the data set with descriptive variable names. 

5. From the data set in step 4, creates a second, independent tidy data set 
with the average of each variable for each activity and each subject.

## Code Book
The code book describing the tidy data produced is in CodeBook.md. Portions of
the code book are generated using R code in the generate\_codebook.R script.

