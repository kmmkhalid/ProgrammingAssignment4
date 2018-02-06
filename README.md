# Getting and Cleaning Data Course Project

This repository contains the R script and documentation files used for the project in Getting and Cleaning Data Course.

The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. Specifically, the required outputs are:

(1) a tidy data set; 
(2) a code book that describes the variables, the data, and any transformations or work done to clean up the data and produce (1); 
(3) a link to this Github repository which contains the script for performing the analysis along with (1) and (2) above. 

The raw input data is the Human Activity Recognition Using Smartphones Data Set which is described in http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones and can be downloaded from
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.

The files in this repository include the following:

run_analysis.R contains the code used to perform the analysis steps described below: 

(1) Merge the training and the test sets to create one data set.
(2) Extract only the measurements on the mean and standard deviation for each measurement.
(3) Use descriptive activity names to name the activities in the data set
(4) Appropriately label the data set with descriptive variable names.
(5) From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject.

The run_analysis.R also provides the code to download the raw data set prior to analysis and processing.

codebook.md describes the data sets, variables, and processes done on the raw data.

tidydatase.txt contains the cleaned up data set as required.

