# getting-and-cleaning-data
Repository for the submission of the getting and cleaning data assignment

The run_analysis.R script included in this repository has been written to meet the requirement for the 'Getting and Cleaning Data' Course Assignment.

The assignment requires the following tasks be performed by the run_analysis.R script.
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

# How to execute the run_analysis.R script
The run_analysis.R has been written to use a specific data set.

1. Download the data set from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
2. Extract dataset to your preferred location
3. Set the working directory (i.e. 'setwd') to the root directory of the dataset
4. Source the run_analysis.R script for the R command line.

# run_analysis output
The run_analysis.R script will generate 2 files.
1. questions_1_to_4.csv: Contains the output as described above in the assignment requirements for questions 1 to 4.
2. question_5.csv: Contains the output as descripted in the assignment question 5 above.