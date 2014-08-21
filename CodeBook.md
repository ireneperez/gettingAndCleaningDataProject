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

data | used | in the | analysis
------------------------------ | ------------------------------ | ------------------------------ | ----------------------------
tBodyAcc-mean()-X              | tBodyAcc-mean()-Y              | tBodyAcc-mean()-Z              | tBodyAcc-std()-X               
tBodyAcc-std()-Y               | tBodyAcc-std()-Z               | tGravityAcc-mean()-X           | tGravityAcc-mean()-Y           
tGravityAcc-mean()-Z           | tGravityAcc-std()-X            | tGravityAcc-std()-Y            | tGravityAcc-std()-Z            
tBodyAccJerk-mean()-X          | tBodyAccJerk-mean()-Y          | tBodyAccJerk-mean()-Z          | tBodyAccJerk-std()-X           
tBodyAccJerk-std()-Y           | tBodyAccJerk-std()-Z           | tBodyGyro-mean()-X             | tBodyGyro-mean()-Y             
tBodyGyro-mean()-Z             | tBodyGyro-std()-X              | tBodyGyro-std()-Y              | tBodyGyro-std()-Z              
tBodyGyroJerk-mean()-X         | tBodyGyroJerk-mean()-Y         | tBodyGyroJerk-mean()-Z         | tBodyGyroJerk-std()-X          
tBodyGyroJerk-std()-Y          | tBodyGyroJerk-std()-Z          | tBodyAccMag-mean()             | tBodyAccMag-std()              
tGravityAccMag-mean()          | tGravityAccMag-std()           | tBodyAccJerkMag-mean()         | tBodyAccJerkMag-std()          
tBodyGyroMag-mean()            | tBodyGyroMag-std()             | tBodyGyroJerkMag-mean()        | tBodyGyroJerkMag-std()         
fBodyAcc-mean()-               | fBodyAcc-mean()-Y              | fBodyAcc-mean()-Z              | fBodyAcc-std()-X               
fBodyAcc-std()-Y               | fBodyAcc-std()-Z               | fBodyAcc-meanFreq()-X          | fBodyAcc-meanFreq()-Y          
fBodyAcc-meanFreq()-Z          | fBodyAccJerk-mean()-X          | fBodyAccJerk-mean()-Y          | fBodyAccJerk-mean()-Z          
fBodyAccJerk-std()-X           | fBodyAccJerk-std()-Y           | fBodyAccJerk-std()-Z           | fBodyAccJerk-meanFreq()-X      
fBodyAccJerk-meanFreq()-Y      | fBodyAccJerk-meanFreq()-Z      | fBodyGyro-mean()-X             | fBodyGyro-mean()-Y             
fBodyGyro-mean()-Z             | fBodyGyro-std()-X              | fBodyGyro-std()-Y              | fBodyGyro-std()-Z              
fBodyGyro-meanFreq()-X         | fBodyGyro-meanFreq()-Y         | fBodyGyro-meanFreq()-Z         | fBodyAccMag-mean()             
fBodyAccMag-std()              | fBodyAccMag-meanFreq()         | fBodyBodyAccJerkMag-mean()     | fBodyBodyAccJerkMag-std()      
fBodyBodyAccJerkMag-meanFreq() | fBodyBodyGyroMag-mean()        | fBodyBodyGyroMag-std()         | fBodyBodyGyroMag-meanFreq()    
fBodyBodyGyroJerkMag-mean()    | fBodyBodyGyroJerkMag-std()     | fBodyBodyGyroJerkMag-meanFreq()|