CodeBook for the tidy dataset
=============================

Data source
-----------
This dataset is from the "Human Activity Recognition Using Smartphones Data Set" which is avaiable here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Collection
-----------------

All the data was build from experiments with a group of 30 volunteers. Each participants did the six activities (walking, walking upstairs, walking downstairs, sitting, standing, laying) to create the data. A Samsung Galaxy S II was used to record the data (using the build in accelerometer and gyroscope). 70% of the volunteers was selected for generating the training data and 30% the test data. The experiments have been video-recorded to label the data manually.

Data
-----------------

We can split the data into three categories : the first one is the time domain signals (prefix 't' to denote time), the second one is the Jerk signals (the time derivative of acceleration) and the last one is Fourier Transform signals which are obtains by taking the Fast Fourier Transform (prefix 'f' to indicate frequency domain signals).

Time domain       | Frequency domain       | Jerk signals                         
----------------- | ---------------------- | ---------------------
tBodyAcc-XYZ      | fBodyAcc-XYZ           | tBodyAccJerk-XYZ
tGravityAcc-XYZ   | fBodyAccJerk-XYZ       | tBodyGyroJerk-XYZ
tBodyGyro         | fBodyGyro-XYZ          |
                  | fBodyAccJerkMag        |
                  | fBodyGyroMag           |
                  | fBodyGyroJerkMag       |

To do our analysis, we have selected the set of variables that were estimated : the mean signals and standard deviation signals. The following list is the used signals : 

