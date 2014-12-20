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
> WALKING\_UPSTAIRS, WALKING\_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a 
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

Here are the column names and descriptions for each row of data in the tidy 
data file, `measurements.txt`, produced by `run_analysis.R`:

Column Name | Description
----------- | -----------
activity\_name |  The name of the activity. One of `WALKING`, `WALKING_UPSTAIRS`, `WALKING_DOWNSTAIRS`, `SITTING`, `STANDING`, `LAYING`
subject\_id |  Identifer for the volunteer subject (ranges from 1 to 30)
tBodyAcc\_mean\_X |  Mean body acceleration along X axis in the time domain
tBodyAcc\_mean\_Y |  Mean body acceleration along Y axis in the time domain
tBodyAcc\_mean\_Z |  Mean body acceleration along Z axis in the time domain
tGravityAcc\_mean\_X |  Mean gravity acceleration along X axis in the time domain
tGravityAcc\_mean\_Y |  Mean gravity acceleration along Y axis in the time domain
tGravityAcc\_mean\_Z |  Mean gravity acceleration along Z axis in the time domain
tBodyAccJerk\_mean\_X |  Mean body acceleration jerk along X axis in the time domain
tBodyAccJerk\_mean\_Y |  Mean body acceleration jerk along Y axis in the time domain
tBodyAccJerk\_mean\_Z |  Mean body acceleration jerk along Z axis in the time domain
tBodyGyro\_mean\_X |  Mean body gyroscope along X axis in the time domain
tBodyGyro\_mean\_Y |  Mean body gyroscope along Y axis in the time domain
tBodyGyro\_mean\_Z |  Mean body gyroscope along Z axis in the time domain
tBodyGyroJerk\_mean\_X |  Mean body gyroscope jerk along X axis in the time domain
tBodyGyroJerk\_mean\_Y |  Mean body gyroscope jerk along Y axis in the time domain
tBodyGyroJerk\_mean\_Z |  Mean body gyroscope jerk along Z axis in the time domain
tBodyAccMag\_mean |  Mean body acceleration mag in the time domain
tGravityAccMag\_mean |  Mean body acceleration mag in the time domain
tBodyAccJerkMag\_mean |  Mean body acceleration jerk mag in the time domain
tBodyGyroMag\_mean |  Mean body gyroscope mag in the time domain
tBodyGyroJerkMag\_mean |  Mean body gyroscope jerk mag in the time domain
fBodyAcc\_mean\_X |  Mean body acceleration along X axis in the frequency domain
fBodyAcc\_mean\_Y |  Mean body acceleration along Y axis in the frequency domain
fBodyAcc\_mean\_Z |  Mean body acceleration along Z axis in the frequency domain
fBodyAcc\_meanFreq\_X |  Mean frequency of body acceleration along X axis in the frequency domain
fBodyAcc\_meanFreq\_Y |  Mean frequency of body acceleration along Y axis in the frequency domain
fBodyAcc\_meanFreq\_Z |  Mean frequency of body acceleration along Z axis in the frequency domain
fBodyAccJerk\_mean\_X |  Mean body acceleration jerk along X axis in the frequency domain
fBodyAccJerk\_mean\_Y |  Mean body acceleration jerk along Y axis in the frequency domain
fBodyAccJerk\_mean\_Z |  Mean body acceleration jerk along Z axis in the frequency domain
fBodyAccJerk\_meanFreq\_X |  Mean frequency of body acceleration jerk along X axis in the frequency domain
fBodyAccJerk\_meanFreq\_Y |  Mean frequency of body acceleration jerk along Y axis in the frequency domain
fBodyAccJerk\_meanFreq\_Z |  Mean frequency of body acceleration jerk along Z axis in the frequency domain
fBodyGyro\_mean\_X |  Mean body gyroscope along X axis in the frequency domain
fBodyGyro\_mean\_Y |  Mean body gyroscope along Y axis in the frequency domain
fBodyGyro\_mean\_Z |  Mean body gyroscope along Z axis in the frequency domain
fBodyGyro\_meanFreq\_X |  Mean frequency of body gyroscope along X axis in the frequency domain
fBodyGyro\_meanFreq\_Y |  Mean frequency of body gyroscope along Y axis in the frequency domain
fBodyGyro\_meanFreq\_Z |  Mean frequency of body gyroscope along Z axis in the frequency domain
fBodyAccMag\_mean |  Mean body acceleration mag in the frequency domain
fBodyAccMag\_meanFreq |  Mean frequency of body acceleration mag in the frequency domain
fBodyAccJerkMag\_mean |  Mean body acceleration jerk mag in the frequency domain
fBodyAccJerkMag\_meanFreq |  Mean frequency of body acceleration jerk mag in the frequency domain
fBodyGyroMag\_mean |  Mean body gyroscope mag in the frequency domain
fBodyGyroMag\_meanFreq |  Mean frequency of body gyroscope mag in the frequency domain
fBodyGyroJerkMag\_mean |  Mean body gyroscope jerk mag in the frequency domain
fBodyGyroJerkMag\_meanFreq |  Mean frequency of body gyroscope jerk mag in the frequency domain
tBodyAcc\_std\_X |  Standard deviation of body acceleration along X axis in the time domain
tBodyAcc\_std\_Y |  Standard deviation of body acceleration along Y axis in the time domain
tBodyAcc\_std\_Z |  Standard deviation of body acceleration along Z axis in the time domain
tGravityAcc\_std\_X |  Standard deviation of gravity acceleration along X axis in the time domain
tGravityAcc\_std\_Y |  Standard deviation of gravity acceleration along Y axis in the time domain
tGravityAcc\_std\_Z |  Standard deviation of gravity acceleration along Z axis in the time domain
tBodyAccJerk\_std\_X |  Standard deviation of body acceleration jerk along X axis in the time domain
tBodyAccJerk\_std\_Y |  Standard deviation of body acceleration jerk along Y axis in the time domain
tBodyAccJerk\_std\_Z |  Standard deviation of body acceleration jerk along Z axis in the time domain
tBodyGyro\_std\_X |  Standard deviation of body gyroscope along X axis in the time domain
tBodyGyro\_std\_Y |  Standard deviation of body gyroscope along Y axis in the time domain
tBodyGyro\_std\_Z |  Standard deviation of body gyroscope along Z axis in the time domain
tBodyGyroJerk\_std\_X |  Standard deviation of body gyroscope jerk along X axis in the time domain
tBodyGyroJerk\_std\_Y |  Standard deviation of body gyroscope jerk along Y axis in the time domain
tBodyGyroJerk\_std\_Z |  Standard deviation of body gyroscope jerk along Z axis in the time domain
tBodyAccMag\_std |  Standard deviation of body acceleration mag in the time domain
tGravityAccMag\_std |  Standard deviation of gravity acceleration mag in the time domain
tBodyAccJerkMag\_std |  Standard deviation of body acceleration jerk mag in the time domain
tBodyGyroMag\_std |  Standard deviation of body gyroscope mag in the time domain
tBodyGyroJerkMag\_std |  Standard deviation of body gyroscope jerk mag in the time domain
fBodyAcc\_std\_X |  Standard deviation of body acceleration along X axis in the frequency domain
fBodyAcc\_std\_Y |  Standard deviation of body acceleration along Y axis in the frequency domain
fBodyAcc\_std\_Z |  Standard deviation of body acceleration along Z axis in the frequency domain
fBodyAccJerk\_std\_X |  Standard deviation of body acceleration jerk along X axis in the frequency domain
fBodyAccJerk\_std\_Y |  Standard deviation of body acceleration jerk along Y axis in the frequency domain
fBodyAccJerk\_std\_Z |  Standard deviation of body acceleration jerk along Z axis in the frequency domain
fBodyGyro\_std\_X |  Standard deviation of body gyroscope along X axis in the frequency domain
fBodyGyro\_std\_Y |  Standard deviation of body gyroscope along Y axis in the frequency domain
fBodyGyro\_std\_Z |  Standard deviation of body gyroscope along Z axis in the frequency domain
fBodyAccMag\_std |  Standard deviation of body acceleration mag in the frequency domain
fBodyAccJerkMag\_std |  Standard deviation of body acceleration jerk mag in the frequency domain
fBodyGyroMag\_std |  Standard deviation of body gyroscope mag in the frequency domain
fBodyGyroJerkMag\_std |  Standard deviation of body gyroscope jerk mag in the frequency domain