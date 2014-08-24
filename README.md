Getting-and-Cleaning-Data
=========================
Steps to use run_analysis.R in this repository:
1. Download the data source from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
2. Unzip the file into your local drive. It will create a UCI HAR Dataset folder.
3. Put run_analysis.R in the parent folder of UCI HAR Dataset, and set it as your working directory using setwd() function in RStudio.
4. Run source("run_analysis.R"), and a new file tiny_data.txt will be created in your working directory.

This R script called run_analysis.R does the following:
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
