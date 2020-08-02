# Getting and Cleaning Data - Course Project

The objective of this project is to prepare tidy data to be processed later. The database that was used for this project is the UCI HAR Dataset available on the following link: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

A script (named `run_analysis.R`) was produced to read and organize the data using the following steps:
1. Read train and test datasets with their respective activity and subjects.
2. Merge both datasets and apply descriptive names.
3. Extract only the data containing means (mean) and standard deviations (std)
4. Generate a tidy dataset where the average of each variable for each subject and each activity was obtained.
The final result is a file named `tidydata.txt`

# Files

`CodeBook.md` describes all the variables and summaries calculated.

`run_analysis.R` contains the script for doing the course project.

`tidydata.txt` is the generated file when running the script run_analysis.R, which contains the the average of each variable for each subject and each activity of the original data.
