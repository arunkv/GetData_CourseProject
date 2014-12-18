GetData\_CourseProject
=====================

> Copyright &copy; 2014 Arun K Viswanathan. All rights reserved

## Overview
Course project for the Coursera course *Getting and Cleaning Data*.
See [instructions here](https://class.coursera.org/getdata-016/human_grading/view/courses/973758/assessments/3/submissions).

## Data Source
The source data was obtained from 
[here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip). 
Detailed descriptions of the source data are available 
[here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

### Acknowledgements

1. Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. 
Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass 
Hardware-Friendly Support Vector Machine. International Workshop of Ambient 
Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012


## Data Cleanup
The script `run_analysis.R` cleans up the data via the following steps:

1. Loads the training (`train/X_train.txt`) and test (`test/X_test.txt`) 
measurements

2. Extracts only the measurements on the mean and standard deviation for each 
measurement using the feature names in `features.txt`

3. Loads the subject data from `train/subject_train.txt` and 
`test/subject_test.txt`, and combines it with the measurements

4. Loads the activity identifier from `train/y_train.txt` and `test/y_test.txt`
and combines it with the measurements

5. Loads the activity labels from `activity_labels.txt` and combines it with 
the measurements to ensure that the activity has a friendly label

6. From the data set in step 5, creates a second, independent tidy data set 
with the average of each variable for each activity and each subject

7. Saves the data to a file in the local directory called `measurements.txt`

## Code Book
The code book describing the tidy data produced is in `CodeBook.md`.

## Reading Tidy Data
The tidy data produced by running `run_analysis.R` can be read using the
following block of code:
```
measurements <- read.table("measurements.txt")
```
