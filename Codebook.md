##Codebook 
The Following document contains the decription about the variables used to create tidy dataset 
Total Subject range from 1 to 30
Training have 21 subject 
Test have 9 subject
Not all the files were used in the UCIHAR-Following files were used :

activity_labels.txt
features.txt
subject_train.txt
X_train.txt
y_train.txt
subject_test.txt
X_test.txt
y_test.txt

##Description of features
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

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

in XYZ 
mean(): Mean value
std(): Standard deviation

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean



# Columns in the final tidy set

 [1] "Subject_Num"                
 [2] "Activity"                   
 [3] "Activity_Number"            
 [4] "tBodyAcc-mean()-X"          
 [5] "tBodyAcc-mean()-Y"          
 [6] "tBodyAcc-mean()-Z"          
 [7] "tBodyAcc-std()-X"           
 [8] "tBodyAcc-std()-Y"           
 [9] "tBodyAcc-std()-Z"           
[10] "tGravityAcc-mean()-X"       
[11] "tGravityAcc-mean()-Y"       
[12] "tGravityAcc-mean()-Z"       
[13] "tGravityAcc-std()-X"        
[14] "tGravityAcc-std()-Y"        
[15] "tGravityAcc-std()-Z"        
[16] "tBodyAccJerk-mean()-X"      
[17] "tBodyAccJerk-mean()-Y"      
[18] "tBodyAccJerk-mean()-Z"      
[19] "tBodyAccJerk-std()-X"       
[20] "tBodyAccJerk-std()-Y"       
[21] "tBodyAccJerk-std()-Z"       
[22] "tBodyGyro-mean()-X"         
[23] "tBodyGyro-mean()-Y"         
[24] "tBodyGyro-mean()-Z"         
[25] "tBodyGyro-std()-X"          
[26] "tBodyGyro-std()-Y"          
[27] "tBodyGyro-std()-Z"          
[28] "tBodyGyroJerk-mean()-X"     
[29] "tBodyGyroJerk-mean()-Y"     
[30] "tBodyGyroJerk-mean()-Z"     
[31] "tBodyGyroJerk-std()-X"      
[32] "tBodyGyroJerk-std()-Y"      
[33] "tBodyGyroJerk-std()-Z"      
[34] "tBodyAccMag-mean()"         
[35] "tBodyAccMag-std()"          
[36] "tGravityAccMag-mean()"      
[37] "tGravityAccMag-std()"       
[38] "tBodyAccJerkMag-mean()"     
[39] "tBodyAccJerkMag-std()"      
[40] "tBodyGyroMag-mean()"        
[41] "tBodyGyroMag-std()"         
[42] "tBodyGyroJerkMag-mean()"    
[43] "tBodyGyroJerkMag-std()"     
[44] "fBodyAcc-mean()-X"          
[45] "fBodyAcc-mean()-Y"          
[46] "fBodyAcc-mean()-Z"          
[47] "fBodyAcc-std()-X"           
[48] "fBodyAcc-std()-Y"           
[49] "fBodyAcc-std()-Z"           
[50] "fBodyAccJerk-mean()-X"      
[51] "fBodyAccJerk-mean()-Y"      
[52] "fBodyAccJerk-mean()-Z"      
[53] "fBodyAccJerk-std()-X"       
[54] "fBodyAccJerk-std()-Y"       
[55] "fBodyAccJerk-std()-Z"       
[56] "fBodyGyro-mean()-X"         
[57] "fBodyGyro-mean()-Y"         
[58] "fBodyGyro-mean()-Z"         
[59] "fBodyGyro-std()-X"          
[60] "fBodyGyro-std()-Y"          
[61] "fBodyGyro-std()-Z"          
[62] "fBodyAccMag-mean()"         
[63] "fBodyAccMag-std()"          
[64] "fBodyBodyAccJerkMag-mean()" 
[65] "fBodyBodyAccJerkMag-std()"  
[66] "fBodyBodyGyroMag-mean()"    
[67] "fBodyBodyGyroMag-std()"     
[68] "fBodyBodyGyroJerkMag-mean()"
[69] "fBodyBodyGyroJerkMag-std()" 

