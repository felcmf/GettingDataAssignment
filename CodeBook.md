# This codebook provides details on cleandata.txt

# Dataset
# This dataset was transformed from the source files downloaded from:
# https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip  
# A full description is available at the site where the data was obtained:
# http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

# Transformations 
# The following transformations were made:
# 1. The subject and activity labels were merged with the training and test datasets.
# 2. The training and test datasets were combined into 1 file.
# 3. Kept the label columns for subject and activity, retained variables with 'mean' and 'std' in the variable names, dropped other variables. 
# 4. The activity code labels were replaced with their descriptions
# 5. The means of each variable measured was computed for each subject-activity pair and stored in the output dataset.
 
# Variables 
# 1 Subject: An indicator for each of the subjects in the experiment. Values are numeric values 1-30
# 2 Activity: An indicator for each of the 6 activities. Values are WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING and LAYING.
# timeBodyAccelerometer-mean()-X
# timeBodyAccelerometer-mean()-Y
# timeBodyAccelerometer-mean()-Z
# timeGravityAccelerometer-mean()-X
# timeGravityAccelerometer-mean()-Y
# timeGravityAccelerometer-mean()-Z
# timeBodyAccelerometerJerk-mean()-X
# timeBodyAccelerometerJerk-mean()-Y
# timeBodyAccelerometerJerk-mean()-Z
# timeBodyGyroscope-mean()-X
# timeBodyGyroscope-mean()-Y
# timeBodyGyroscope-mean()-Z
# timeBodyGyroscopeJerk-mean()-X
# timeBodyGyroscopeJerk-mean()-Y
# timeBodyGyroscopeJerk-mean()-Z
# timeBodyAccelerometerMagnitude-mean()
# timeGravityAccelerometerMagnitude-mean()
# timeBodyAccelerometerJerkMagnitude-mean()
# timeBodyGyroscopeMagnitude-mean()
# timeBodyGyroscopeJerkMagnitude-mean()
# frequencyBodyAccelerometer-mean()-X
# frequencyBodyAccelerometer-mean()-Y
# frequencyBodyAccelerometer-mean()-Z
# frequencyBodyAccelerometerJerk-mean()-X
# frequencyBodyAccelerometerJerk-mean()-Y
# frequencyBodyAccelerometerJerk-mean()-Z
# frequencyBodyGyroscope-mean()-X
# frequencyBodyGyroscope-mean()-Y
# frequencyBodyGyroscope-mean()-Z
# frequencyBodyAccelerometerMagnitude-mean()
# frequencyBodyAccelerometerJerkMagnitude-mean()
# frequencyBodyGyroscopeMagnitude-mean()
# frequencyBodyGyroscopeJerkMagnitude-mean()
# timeBodyAccelerometer-std()-X
# timeBodyAccelerometer-std()-Y
# timeBodyAccelerometer-std()-Z
# timeGravityAccelerometer-std()-X
# timeGravityAccelerometer-std()-Y
# timeGravityAccelerometer-std()-Z
# timeBodyAccelerometerJerk-std()-X
# timeBodyAccelerometerJerk-std()-Y
# timeBodyAccelerometerJerk-std()-Z
# timeBodyGyroscope-std()-X
# timeBodyGyroscope-std()-Y
# timeBodyGyroscope-std()-Z
# timeBodyGyroscopeJerk-std()-X
# timeBodyGyroscopeJerk-std()-Y
# timeBodyGyroscopeJerk-std()-Z
# timeBodyAccelerometerMagnitude-std()
# timeGravityAccelerometerMagnitude-std()
# timeBodyAccelerometerJerkMagnitude-std()
# timeBodyGyroscopeMagnitude-std()
# timeBodyGyroscopeJerkMagnitude-std()
# frequencyBodyAccelerometer-std()-X
# frequencyBodyAccelerometer-std()-Y
# frequencyBodyAccelerometer-std()-Z
# frequencyBodyAccelerometerJerk-std()-X
# frequencyBodyAccelerometerJerk-std()-Y
# frequencyBodyAccelerometerJerk-std()-Z
# frequencyBodyGyroscope-std()-X
# frequencyBodyGyroscope-std()-Y
# frequencyBodyGyroscope-std()-Z
# frequencyBodyAccelerometerMagnitude-std()
# frequencyBodyAccelerometerJerkMagnitude-std()
# frequencyBodyGyroscopeMagnitude-std()
# frequencyBodyGyroscopeJerkMagnitude-std()

# Features for the source database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) 
# were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to 
# remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass 
# Butterworth filter with a corner frequency of 0.3 Hz. Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals 
# (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, 
# tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, 
# fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). These signals were used to estimate variables of the 
# feature vector for each pattern:  '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

# The set of variables that were estimated from these signals are: 
# mean(): Mean value
# std(): Standard deviation

# The average for each indiviual and activity was then taken for each variable to obtain the values in the output file.
