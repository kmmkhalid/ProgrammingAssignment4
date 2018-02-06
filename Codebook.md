# Codebook for the Getting and Cleaning Data Course Project

## Raw Data

This project uses as input the Human Activity Recognition Using Smartphones Data Set v1.0 [1] which is described in http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones and can be downloaded from
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.

This database was built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors. The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity were captured at a constant rate of 50Hz. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

For each record in the dataset the following information are provided: 
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration 
- Triaxial Angular velocity from the gyroscope 
- A 561-feature vector with time and frequency domain variables 
- Its activity label
- An identifier of the subject who carried out the experiment

For each of the signals below (where '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions),

- tBodyAcc-XYZ
- tGravityAcc-XYZ
- tBodyAccJerk-XYZ
- tBodyGyro-XYZ
- tBodyGyroJerk-XYZ
- tBodyAccMag
- tGravityAccMag
- tBodyAccJerkMag
- tBodyGyroMag
- tBodyGyroJerkMag
- fBodyAcc-XYZ
- fBodyAccJerk-XYZ
- fBodyGyro-XYZ
- fBodyAccMag
- fBodyAccJerkMag
- fBodyGyroMag
- fBodyGyroJerkMag

the following measurements were taken, producing a total of 561 variables:

- mean(): Mean value
- std(): Standard deviation
- mad(): Median absolute deviation 
- max(): Largest value in array
- min(): Smallest value in array
- sma(): Signal magnitude area
- energy(): Energy measure. Sum of the squares divided by the number of values. 
- iqr(): Interquartile range 
- entropy(): Signal entropy
- arCoeff(): Autorregresion coefficients with Burg order equal to 4
- correlation(): correlation coefficient between two signals
- maxInds(): index of the frequency component with largest magnitude
- meanFreq(): Weighted average of the frequency components to obtain a mean frequency
- skewness(): skewness of the frequency domain signal 
- kurtosis(): kurtosis of the frequency domain signal 
- bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
- angle(): Angle between to vectors.

Along with other files, the following files relevant to this project were contained in the raw data set:

- 'features_info.txt' shows information about each of the variables 
- 'features.txt' contains a list of all 561 variables
- 'activity_labels.txt' links the class labels with their activity name
- 'train/X_train.txt' contains the actual measurements used for training; 7352 observations of the 561 variables described in features.txt   
- 'train/y_train.txt' contains the activity labels (range is from 1-6) corresponding to each of the 7352 observations used for training
- 'test/X_test.txt': contains the actual measurements used for testing; 2947 observations of the 561 variables described in features.txt  
- 'test/y_test.txt': contains the activity labels (range is from 1-6) corresponding to each of the 2947 observations used for testing
- 'train/subject_train.txt' and 'test/subject_test.txt': Each row identifies the subject who performed the activity observation; range is from 1 to 30. 

## Tidy Data Set

The Tidy Data set produced for this project is a subsetted and summarized version of the combined train and test data sets from the raw data. Specifically, the tidy data set has the following features:

1 Only the variables containing measurements on the mean and standard deviation were used. Thus, along with the SubjectID and the ActivityID, the data set has a total of 68 variables. Each column of the data set corresponds to one variable, named as follows: 

- "SubjectID"		
- "ActivityID"		
- "tBodyAcc-mean()-X"          
- "tBodyAcc-mean()-Y"
- "tBodyAcc-mean()-Z"           
- "tGravityAcc-mean()-X"       
- "tGravityAcc-mean()-Y"        
- "tGravityAcc-mean()-Z"        
- "tBodyAccJerk-mean()-X"      
- "tBodyAccJerk-mean()-Y"       
- "tBodyAccJerk-mean()-Z"       
- "tBodyGyro-mean()-X"         
- "tBodyGyro-mean()-Y"          
- "tBodyGyro-mean()-Z"          
- "tBodyGyroJerk-mean()-X"     
- "tBodyGyroJerk-mean()-Y"      
- "tBodyGyroJerk-mean()-Z"      
- "tBodyAccMag-mean()"         
- "tGravityAccMag-mean()"       
- "tBodyAccJerkMag-mean()"      
- "tBodyGyroMag-mean()"        
- "tBodyGyroJerkMag-mean()"     
- "fBodyAcc-mean()-X"           
- "fBodyAcc-mean()-Y"          
- "fBodyAcc-mean()-Z"           
- "fBodyAccJerk-mean()-X"       
- "fBodyAccJerk-mean()-Y"      
- "fBodyAccJerk-mean()-Z"       
- "fBodyGyro-mean()-X"          
- "fBodyGyro-mean()-Y"         
- "fBodyGyro-mean()-Z"          
- "fBodyAccMag-mean()"          
- "fBodyBodyAccJerkMag-mean()" 
- "fBodyBodyGyroMag-mean()"     
- "fBodyBodyGyroJerkMag-mean()" 
- "tBodyAcc-std()-X"           
- "tBodyAcc-std()-Y"            
- "tBodyAcc-std()-Z"            
- "tGravityAcc-std()-X"        
- "tGravityAcc-std()-Y"         
- "tGravityAcc-std()-Z"         
- "tBodyAccJerk-std()-X"       
- "tBodyAccJerk-std()-Y"        
- "tBodyAccJerk-std()-Z"        
- "tBodyGyro-std()-X"          
- "tBodyGyro-std()-Y"           
- "tBodyGyro-std()-Z"           
- "tBodyGyroJerk-std()-X"      
- "tBodyGyroJerk-std()-Y"       
- "tBodyGyroJerk-std()-Z"       
- "tBodyAccMag-std()"          
- "tGravityAccMag-std()"        
- "tBodyAccJerkMag-std()"       
- "tBodyGyroMag-std()"         
- "tBodyGyroJerkMag-std()"      
- "fBodyAcc-std()-X"            
- "fBodyAcc-std()-Y"           
- "fBodyAcc-std()-Z"            
- "fBodyAccJerk-std()-X"        
- "fBodyAccJerk-std()-Y"       
- "fBodyAccJerk-std()-Z"        
- "fBodyGyro-std()-X"           
- "fBodyGyro-std()-Y"          
- "fBodyGyro-std()-Z"           
- "fBodyAccMag-std()"           
- "fBodyBodyAccJerkMag-std()"  
- "fBodyBodyGyroMag-std()"      
- "fBodyBodyGyroJerkMag-std()" 

The SubjectID identifies the subject who performed the activity observation. There are a total of 30 subjects.
The ActivityID identifies the activity (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) performed by the subject during which the measurements were taken.
The detailed description of variables 3-68 can be found in http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.

2 Each row of the tidy data set corresponds to the column mean of each of the aforementioned variables for a particular subject doing a particular activity. With 30 subjects and 6 possible activity classes, the data frame consists of a total of 180 observations; grouped by Subject ID.

## R Script for producing the Tidy Data Set

The process for transforming the Raw Data into the Tidy Data Set as required is described in the following steps and contained in the R script run_analysis.R:

### 1 DATA PREPARATION 
	1.1 Download the raw data set
	1.2 Unzip dataSet to ./data directory
	1.3 Load the data files
		1.3.1 Load the Features file
		1.3.2 Load the Train data
		1.3.3 Load the Test data
### 2 DATA PROCESSING 
	2.1 Merge the training and the test sets to create one data set.
	2.2 Extract only the measurements on the mean and standard deviation for each variable.
	2.3 Use descriptive activity names to name the activities in the data set
	2.4 Label all columns using the actual features/ variable names. 
	2.5 From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject.

To run, import and run the script run_analysis.R. Ensure that all files have been downloaded and extracted into the working directory of R.
	

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
