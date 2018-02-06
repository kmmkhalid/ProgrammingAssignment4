library(dplyr)
library(stringr)

#1 DATA PREPARATION 
#-----------------------------------------------------------------------------------------------

#1.1 Download the raw data set
if(!file.exists("./data")){dir.create("./data")}
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile="./data/RawData.zip")

#1.2 Unzip dataSet to /data directory
unzip(zipfile="./data/RawData.zip",exdir="./data")

#1.3 Load the data files
#1.3.1 Load the Features file
features <- read.table("./data/UCI HAR Dataset/features.txt")

#1.3.2 Load the Train data
train_data <- read.table("./data/UCI HAR Dataset/train/X_train.txt")
activity_codes_train <- read.table("./data/UCI HAR Dataset/train/y_train.txt")
subject_codes_train <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")
train_data_all <- bind_cols(subject_codes_train, activity_codes_train, train_data)

#1.3.3 Load the Test data
test_data <- read.table("./data/UCI HAR Dataset/test/X_test.txt")
activity_codes_test <- read.table("./data/UCI HAR Dataset/test/y_test.txt")
subject_codes_test <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")
test_data_all <- bind_cols(subject_codes_test, activity_codes_test, test_data)
#-----------------------------------------------------------------------------------------------

#2 DATA PROCESSING 

#2.1 Merge the training and the test sets to create one data set.
#-----------------------------------------------------------------------------------------------
all_data <- bind_rows(train_data_all, test_data_all)

#2.4 Label all columns using the actual features/ measurements 
#-----------------------------------------------------------------------------------------------
# Note: This is required as step 4 but I found it easier to do first
#-----------------------------------------------------------------------------------------------
colnames(all_data) <- c("SubjectID", "ActivityID", as.character(as.matrix(features[2])))

#2.2 Extract only the measurements on the mean and standard deviation for each measurement. 
#-----------------------------------------------------------------------------------------------
x <- grep("mean()", names(all_data), value = TRUE, fixed = TRUE)
y <- grep("std()", names(all_data), value = TRUE, fixed = TRUE)
z <- grep("ID", names(all_data), value = TRUE, fixed = TRUE)
filtered_data <- all_data[,c(z,x,y)]

#2.3 Use descriptive activity names to name the activities in the data set 
#-----------------------------------------------------------------------------------------------
filtered_data$ActivityID <- str_replace_all(filtered_data$ActivityID, c("1" = "WALKING", "2" = "WALKING_UPSTAIRS", "3" = "WALKING_DOWNSTAIRS", "4" = "SITTING", "5" = "STANDING", "6" = "LAYING"))


#2.5 From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject.
#-----------------------------------------------------------------------------------------------
tidydataset <- aggregate(. ~ SubjectID + ActivityID, filtered_data, mean)
tidydataset <- tidydataset[order(tidydataset$SubjectID, tidydataset$ActivityID),]
write.table(tidydataset, "tidydataset.txt", row.name = FALSE)

