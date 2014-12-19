Code Book for Tidy Data
======================

> Copyright &copy; 2014 Arun K Viswanathan. All rights reserved

## Overview

This document describes the tidy data file (`measurements.txt`) produced by 
the script `run_analysis.R`. See `README.md` for details of the data source and
the cleanups performed on the source data.

## Code Book

Quoting from the original data source:

> The experiments have been carried out with a group of 30 volunteers within an 
> age bracket of 19-48 years. Each person performed six activities (WALKING, 
> WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a 
> smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer 
> and gyroscope, we captured 3-axial linear acceleration and 3-axial angular 
> velocity at a constant rate of 50Hz. The experiments have been video-recorded 
> to label the data manually. The obtained dataset has been randomly partitioned 
> into two sets, where 70% of the volunteers was selected for generating the 
> training data and 30% the test data. 

> The sensor signals (accelerometer and gyroscope) were pre-processed by 
> applying noise filters and then sampled in fixed-width sliding windows of 
> 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration 
> signal, which has gravitational and body motion components, was separated 
> using a Butterworth low-pass filter into body acceleration and gravity. The 
> gravitational force is assumed to have only low frequency components, 
> therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a
> vector of features was obtained by calculating variables from the time and 
> frequency domain.

Here are the column names and descriptions for the data in the tidy data file,
`measurements.txt`, produced by `run_analysis.R`:

Column Name | Description
----------- | -----------
activity_name |  The name of the activity. One of `WALKING`, `WALKING_UPSTAIRS`, `WALKING_DOWNSTAIRS`, `SITTING`, `STANDING`, `LAYING`
subject_id |  Identifer for the volunteer subject (ranges from 1 to 30)
tBodyAcc_mean_X |  Mean body acceleration along X axis in the time domain
tBodyAcc_mean_Y |  Mean body acceleration along Y axis in the time domain
tBodyAcc_mean_Z |  Mean body acceleration along Z axis in the time domain
tGravityAcc_mean_X |  Mean gravity acceleration along X axis in the time domain
tGravityAcc_mean_Y |  Mean gravity acceleration along Y axis in the time domain
tGravityAcc_mean_Z |  Mean gravity acceleration along Z axis in the time domain
tBodyAccJerk_mean_X |  Mean body acceleration jerk along X axis in the time domain
tBodyAccJerk_mean_Y |  Mean body acceleration jerk along Y axis in the time domain
tBodyAccJerk_mean_Z |  Mean body acceleration jerk along Z axis in the time domain
tBodyGyro_mean_X |  Mean body gyroscope along X axis in the time domain
tBodyGyro_mean_Y |  Mean body gyroscope along Y axis in the time domain
tBodyGyro_mean_Z |  Mean body gyroscope along Z axis in the time domain
tBodyGyroJerk_mean_X |  Mean body gyroscope jerk along X axis in the time domain
tBodyGyroJerk_mean_Y |  Mean body gyroscope jerk along Y axis in the time domain
tBodyGyroJerk_mean_Z |  Mean body gyroscope jerk along Z axis in the time domain
tBodyAccMag_mean |  Mean body acceleration mag in the time domain
tGravityAccMag_mean |  Mean body acceleration mag in the time domain
tBodyAccJerkMag_mean |  Mean body acceleration jerk mag in the time domain
tBodyGyroMag_mean |  Mean body gyroscope mag in the time domain
tBodyGyroJerkMag_mean |  Mean body gyroscope jerk mag in the time domain
fBodyAcc_mean_X |  Mean body acceleration along X axis in the frequency domain
fBodyAcc_mean_Y |  Mean body acceleration along Y axis in the frequency domain
fBodyAcc_mean_Z |  Mean body acceleration along Z axis in the frequency domain
fBodyAcc_meanFreq_X |  Mean frequency of body acceleration along X axis in the frequency domain
fBodyAcc_meanFreq_Y |  Mean frequency of body acceleration along Y axis in the frequency domain
fBodyAcc_meanFreq_Z |  Mean frequency of body acceleration along Z axis in the frequency domain
fBodyAccJerk_mean_X |  Mean body acceleration jerk along X axis in the frequency domain
fBodyAccJerk_mean_Y |  Mean body acceleration jerk along Y axis in the frequency domain
fBodyAccJerk_mean_Z |  Mean body acceleration jerk along Z axis in the frequency domain
fBodyAccJerk_meanFreq_X |  Mean frequency of body acceleration jerk along X axis in the frequency domain
fBodyAccJerk_meanFreq_Y |  Mean frequency of body acceleration jerk along Y axis in the frequency domain
fBodyAccJerk_meanFreq_Z |  Mean frequency of body acceleration jerk along Z axis in the frequency domain
fBodyGyro_mean_X |  Mean body gyroscope along X axis in the frequency domain
fBodyGyro_mean_Y |  Mean body gyroscope along Y axis in the frequency domain
fBodyGyro_mean_Z |  Mean body gyroscope along Z axis in the frequency domain
fBodyGyro_meanFreq_X |  Mean frequency of body gyroscope along X axis in the frequency domain
fBodyGyro_meanFreq_Y |  Mean frequency of body gyroscope along Y axis in the frequency domain
fBodyGyro_meanFreq_Z |  Mean frequency of body gyroscope along Z axis in the frequency domain
fBodyAccMag_mean |  Mean body acceleration mag in the frequency domain
fBodyAccMag_meanFreq |  Mean frequency of body acceleration mag in the frequency domain
fBodyAccJerkMag_mean |  Mean body acceleration jerk mag in the frequency domain
fBodyAccJerkMag_meanFreq |  Mean frequency of body acceleration jerk mag in the frequency domain
fBodyGyroMag_mean |  TODO
fBodyGyroMag_meanFreq |  TODO
fBodyGyroJerkMag_mean |  TODO
fBodyGyroJerkMag_meanFreq |  TODO
tBodyAcc_std_X |  TODO
tBodyAcc_std_Y |  TODO
tBodyAcc_std_Z |  TODO
tGravityAcc_std_X |  TODO
tGravityAcc_std_Y |  TODO
tGravityAcc_std_Z |  TODO
tBodyAccJerk_std_X |  TODO
tBodyAccJerk_std_Y |  TODO
tBodyAccJerk_std_Z |  TODO
tBodyGyro_std_X |  TODO
tBodyGyro_std_Y |  TODO
tBodyGyro_std_Z |  TODO
tBodyGyroJerk_std_X |  TODO
tBodyGyroJerk_std_Y |  TODO
tBodyGyroJerk_std_Z |  TODO
tBodyAccMag_std |  TODO
tGravityAccMag_std |  TODO
tBodyAccJerkMag_std |  TODO
tBodyGyroMag_std |  TODO
tBodyGyroJerkMag_std |  TODO
fBodyAcc_std_X |  TODO
fBodyAcc_std_Y |  TODO
fBodyAcc_std_Z |  TODO
fBodyAccJerk_std_X |  TODO
fBodyAccJerk_std_Y |  TODO
fBodyAccJerk_std_Z |  TODO
fBodyGyro_std_X |  TODO
fBodyGyro_std_Y |  TODO
fBodyGyro_std_Z |  TODO
fBodyAccMag_std |  TODO
fBodyAccJerkMag_std |  TODO
fBodyGyroMag_std |  TODO
fBodyGyroJerkMag_std |  TODO