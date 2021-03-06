Codebook
=========

The experiments were carried out with a group of 30 volunteers, each performing six activities with a smartphone on the waist, measuring a number of variables related to acceleration and velocity in three-dimensional space.

Column 1: subject ID
--------------------
An identifier ranging from 1 to 30 for each of the 30 volunteers


Column 2: activity ID
---------------------
An identifier for each of the six activities that the subjects performed:

(1) WALKING
(2) WALKING_UPSTAIRS
(3) WALKING_DOWNSTAIRS
(4) SITTING
(5) STANDING
(6) LAYING

Columns 3-68: Variables
-----------------------
The variables selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions. As 8 of the 17 variables listed below have columns for the three different directions, the total number of variables is 33.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

Of these 33 variables, mean (mean) and standard deviation (sd) were calculated, the resulting 66 variable are listed below. This corresponds to “dataset1” in the R script.

 [1] tBodyAcc.mean.X         
 [2] tBodyAcc.mean.Y          
 [3] tBodyAcc.mean.Z           
 [4] tGravityAcc.mean.X       
 [5] tGravityAcc.mean.Y        
 [6] tGravityAcc.mean.Z       
 [7] tBodyAccJerk.mean.X       
 [8] tBodyAccJerk.mean.Y      
 [9] tBodyAccJerk.mean.Z       
[10] tBodyGyro.mean.X  
[11] tBodyGyro.mean.Y          
[12] tBodyGyro.mean.Z        
[13] tBodyGyroJerk.mean.X
[14] tBodyGyroJerk.mean.Y  
[15] tBodyGyroJerk.mean.Z
[16] tBodyAccMag.mean      
[17] tGravityAccMag.mean
[18] tBodyAccJerkMag.mean   
[19] tBodyGyroMag.mean
[20] tBodyGyroJerkMag.mean
[21] fBodyAcc.mean.X
[22] fBodyAcc.mean.Y       
[23] fBodyAcc.mean.Z
[24] fBodyAccJerk.mean.X     
[25] fBodyAccJerk.mean.Y
[26] fBodyAccJerk.mean.Z     
[27] fBodyGyro.mean.X
[28] fBodyGyro.mean.Y     
[29] fBodyGyro.mean.Z
[30] fBodyAccMag.mean   
[31] fBodyBodyAccJerkMag.mean
[32] fBodyBodyGyroMag.mean  
[33] fBodyBodyGyroJerkMag.mean
[34] tBodyAcc.sd.X          
[35] tBodyAcc.sd.Y
[34] tBodyAcc.sd.Z          
[37] tGravityAcc.sd.X
[38] tGravityAcc.sd.Y 
[39] tGravityAcc.sd.Z
[40] tBodyAccJerk.sd.X     
[41] tBodyAccJerk.sd.Y
[42] tBodyAccJerk.sd.Z       
[43] tBodyGyro.sd.X
[44] tBodyGyro.sd.Y   
[45] tBodyGyro.sd.Z
[46] tBodyGyroJerk.sd.X     
[47] tBodyGyroJerk.sd.Y
[48] tBodyGyroJerk.sd.Z    
[49] tBodyAccMag.sd
[50] tGravityAccMag.sd     
[51] tBodyAccJerkMag.sd
[52] tBodyGyroMag.sd     
[53] tBodyGyroJerkMag.sd
[54] fBodyAcc.sd.X      
[55] fBodyAcc.sd.Y
[56] fBodyAcc.sd.Z    
[57] fBodyAccJerk.sd.X
[58] fBodyAccJerk.sd.Y       
[59] fBodyAccJerk.sd.Z
[60] fBodyGyro.sd.X      
[61] fBodyGyro.sd.Y
[62] fBodyGyro.sd.Z        
[63] fBodyAccMag.sd
[64] fBodyBodyAccJerkMag.sd
[65] fBodyBodyGyroMag.sd
[66] fBodyBodyGyroJerkMag.sd


The mean of each variable in dataset 1 by subject and activity was calculated, and “mean of” was added at the beginning of each of the 66 variable names. This corresponds to “dataset2” in the R script.
