Codebook : Human Activity Recognition Using Smartphones
====
Original Data source
----
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws


Introduction
----
This is a derivation of the orignal data set sourced as mentioned above, and linked [here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones). Accelerometer and gyroscope signal data recorded by a smartphone(Samsung Galaxy S II) was collected from 30 subjects performing six different activities. The data was hand labeled. The collected signal data was then filtered, sampled and transformed to produce various time and frequency domain variables. This derived data set contains only those variables obtained from mean and standard deviation measurements. More information on the specifics of the experiment and original data source can be found at the link provided above.

Two new data sets are derived from the original data. 

The first data set contains a record for each experiment conducted. Each experiment involves one of the 30 subjects performing one of the six activities. Each record includes 64 mean or standard deviation variables, along with the subject and activity related to the experiment.

The second data set contains a record for each unique combination of subject and activity, along with the average value for each of the 64 variables present in the first data set.


Variable Descriptions
----
Information on each variable in both data sets follow. Where applicable, summary statistics are included.

Variable names preceded with 'm' denote variables measuring a mean value. Similarly, variable names preceded with 's' denote variables measuring a standard deviation value.

Variable names with a 't' in the second character position denote a time domain variable. Variable names with an 'f' in this position denote a frequence domain variable.

Where applicable, variable names ending in either '_X', '_Y', or '_Z' denote a measurement along the X, Y or Z axis respectively.

***
Variable Name : mtBodyAcc_X  
Description : Mean of the body linear acceleration along the X axis (time domain)  
Summary statistics :  
***
Variable Name : mtBodyAcc_Y  
Description : Mean of the body linear acceleration along the Y axis (time domain)  
Summary statistics :  
***
Variable Name : mtBodyAcc_Z  
Description : Mean of the body linear acceleration along the Z axis (time domain)  
Summary statistics :  
***
Variable Name : mtGravityAcc_X  
Description : Mean of the gravitational linear acceleration along the X axis (time domain)  
Summary statistics :  
***
Variable Name : mtGravityAcc_Y  
Description : Mean of the gravitational linear acceleration along the Y axis (time domain)  
Summary statistics :  
***
Variable Name : mtGravityAcc_Z  
Description : Mean of the gravitational linear acceleration along the Z axis (time domain)  
Summary statistics :  
***
Variable Name : mtBodyAccJerk_X  
Description : Mean of the body linear acceleration jerk along the X axis (time domain)  
Summary statistics :  
***
Variable Name : mtBodyAccJerk_Y  
Description : Mean of the body linear acceleration jerk along the Y axis (time domain)  
Summary statistics :  
***
Variable Name : mtBodyAccJerk_Z  
Description : Mean of the body linear acceleration jerk along the Z axis (time domain)  
Summary statistics :  
***
Variable Name : mtBodyGyro_X  
Description : Mean of the body angular velocity along the X axis (time domain)  
Summary statistics :  
***
Variable Name : mtBodyGyro_Y  
Description : Mean of the body angular velocity along the Y axis (time domain)  
Summary statistics :  
***
Variable Name : mtBodyGyro_Z  
Description : Mean of the body angular velocity along the Z axis (time domain)  
Summary statistics :  
***
Variable Name : mtBodyGyroJerk_X  
Description : Mean of the body angular velocity jerk along the X axis (time domain)  
Summary statistics :  
***
Variable Name : mtBodyGyroJerk_Y  
Description : Mean of the body angular velocity jerk along the Y axis (time domain)  
Summary statistics :  
***
Variable Name : mtBodyGyroJerk_Z  
Description : Mean of the body angular velocity jerk along the Z axis (time domain)  
Summary statistics :  
***
Variable Name : mtBodyAccMag  
Description : Mean of the body linear acceleration magnitude (time domain)  
Summary statistics :  
***
Variable Name : mtGravityAccMag  
Description : Mean of the gravitational linear acceleration magnitude (time domain)  
Summary statistics :  
***
Variable Name : mtBodyAccJerkMag  
Description : Mean of the body linear acceleration jerk magnitude (time domain)  
Summary statistics :  
***
Variable Name : mtBodyGyroMag  
Description : Mean of the body angular velocity magnitude (time domain)  
Summary statistics :  
***
Variable Name : mtBodyGyroJerkMag  
Description : Mean of the body angular velocity jerk magnitude (time domain)  
Summary statistics :  
***
Variable Name : mfBodyAcc_X  
Description : Mean of the body linear acceleration along the X axis (frequency domain)  
Summary statistics :  
***
Variable Name : mfBodyAcc_Y  
Description : Mean of the body linear acceleration along the Y axis (frequency domain)  
Summary statistics :  
***
Variable Name : mfBodyAcc_Z  
Description : Mean of the body linear acceleration along the Z axis (frequency domain)  
Summary statistics :  
***
Variable Name : mfBodyAccJerk_X  
Description : Mean of the body linear acceleration jerk along the X axis (frequency domain)  
Summary statistics :  
***
Variable Name : mfBodyAccJerk_Y  
Description : Mean of the body linear acceleration jerk along the Y axis (frequency domain)  
Summary statistics :  
***
Variable Name : mfBodyAccJerk_Z  
Description : Mean of the body linear acceleration jerk along the Z axis (frequency domain)  
Summary statistics :  
***
Variable Name : mfBodyGyro_X  
Description : Mean of the body angular velocity along the X axis (frequency domain)  
Summary statistics :  
***
Variable Name : mfBodyGyro_Y  
Description : Mean of the body angular velocity along the Y axis (frequency domain)  
Summary statistics :  
***
Variable Name : mfBodyGyro_Z  
Description : Mean of the body angular velocity along the Z axis (frequency domain)  
Summary statistics :  
***
Variable Name : mfBodyAccMag  
Description : Mean of the body linear acceleration magnitude (frequency domain)  
Summary statistics :  
***
Variable Name : mfBodyAccJerkMag  
Description : Mean of the body linear acceleration jerk magnitude (frequency domain)  
Summary statistics :  
***
Variable Name : mfBodyGyroMag  
Description : Mean of the body angular velocity magnitude (frequency domain)  
Summary statistics :  
***
Variable Name : mfBodyGyroJerkMag  
Description : Mean of the body angular velocity jerk magnitude (frequency domain)  
Summary statistics :  
***
Variable Name : stBodyAcc_X  
Description : Standard Deviation of the body linear acceleration along the X axis (time domain)  
Summary statistics :  
***
Variable Name : stBodyAcc_Y  
Description : Standard Deviation of the body linear acceleration along the Y axis (time domain)  
Summary statistics :  
***
Variable Name : stBodyAcc_Z  
Description : Standard Deviation of the body linear acceleration along the Z axis (time domain)  
Summary statistics :  
***
Variable Name : stGravityAcc_X  
Description : Standard Deviation of the gravitational linear acceleration along the X axis (time domain)  
Summary statistics :  
***
Variable Name : stGravityAcc_Y  
Description : Standard Deviation of the gravitational linear acceleration along the Y axis (time domain)  
Summary statistics :  
***
Variable Name : stGravityAcc_Z  
Description : Standard Deviation of the gravitational linear acceleration along the Z axis (time domain)  
Summary statistics :  
***
Variable Name : stBodyAccJerk_X  
Description : Standard Deviation of the body linear acceleration jerk along the X axis (time domain)  
Summary statistics :  
***
Variable Name : stBodyAccJerk_Y  
Description : Standard Deviation of the body linear acceleration jerk along the Y axis (time domain)  
Summary statistics :  
***
Variable Name : stBodyAccJerk_Z  
Description : Standard Deviation of the body linear acceleration jerk along the Z axis (time domain)  
Summary statistics :  
***
Variable Name : stBodyGyro_X  
Description : Standard Deviation of the body angular velocity along the X axis (time domain)  
Summary statistics :  
***
Variable Name : stBodyGyro_Y  
Description : Standard Deviation of the body angular velocity along the Y axis (time domain)  
Summary statistics :  
***
Variable Name : stBodyGyro_Z  
Description : Standard Deviation of the body angular velocity along the Z axis (time domain)  
Summary statistics :  
***
Variable Name : stBodyGyroJerk_X  
Description : Standard Deviation of the body angular velocity jerk along the X axis (time domain)  
Summary statistics :  
***
Variable Name : stBodyGyroJerk_Y  
Description : Standard Deviation of the body angular velocity jerk along the Y axis (time domain)  
Summary statistics :  
***
Variable Name : stBodyGyroJerk_Z  
Description : Standard Deviation of the body angular velocity jerk along the Z axis (time domain)  
Summary statistics :  
***
Variable Name : stBodyAccMag  
Description : Standard Deviation of the body linear acceleration magnitude (time domain)  
Summary statistics :  
***
Variable Name : stGravityAccMag  
Description : Standard Deviation of the gravitational linear acceleration magnitude (time domain)  
Summary statistics :  
***
Variable Name : stBodyAccJerkMag  
Description : Standard Deviation of the body linear acceleration jerk magnitude (time domain)  
Summary statistics :  
***
Variable Name : stBodyGyroMag  
Description : Standard Deviation of the body angular velocity magnitude (time domain)  
Summary statistics :  
***
Variable Name : stBodyGyroJerkMag  
Description : Standard Deviation of the body angular velocity jerk magnitude (time domain)  
Summary statistics :  
***
Variable Name : sfBodyAcc_X  
Description : Standard Deviation of the body linear acceleration along the X axis (frequency domain)  
Summary statistics :  
***
Variable Name : sfBodyAcc_Y  
Description : Standard Deviation of the body linear acceleration along the Y axis (frequency domain)  
Summary statistics :  
***
Variable Name : sfBodyAcc_Z  
Description : Standard Deviation of the body linear acceleration along the Z axis (frequency domain)  
Summary statistics :  
***
Variable Name : sfBodyAccJerk_X  
Description : Standard Deviation of the body linear acceleration jerk along the X axis (frequency domain)  
Summary statistics :  
***
Variable Name : sfBodyAccJerk_Y  
Description : Standard Deviation of the body linear acceleration jerk along the Y axis (frequency domain)  
Summary statistics :  
***
Variable Name : sfBodyAccJerk_Z  
Description : Standard Deviation of the body linear acceleration jerk along the Z axis (frequency domain)  
Summary statistics :  
***
Variable Name : sfBodyGyro_X  
Description : Standard Deviation of the body angular velocity along the X axis (frequency domain)  
Summary statistics :  
***
Variable Name : sfBodyGyro_Y  
Description : Standard Deviation of the body angular velocity along the Y axis (frequency domain)  
Summary statistics :  
***
Variable Name : sfBodyGyro_Z  
Description : Standard Deviation of the body angular velocity along the Z axis (frequency domain)  
Summary statistics :  
***
Variable Name : sfBodyAccMag  
Description : Standard Deviation of the body linear acceleration magnitude (frequency domain)  
Summary statistics :  
***
Variable Name : sfBodyAccJerkMag  
Description : Standard Deviation of the body linear acceleration jerk magnitude (frequency domain)  
Summary statistics :  
***
Variable Name : sfBodyGyroMag  
Description : Standard Deviation of the body angular velocity magnitude (frequency domain)  
Summary statistics :  
***
Variable Name : sfBodyGyroJerkMag  
Description : Standard Deviation of the body angular velocity jerk magnitude (frequency domain)  
Summary statistics :  
***

