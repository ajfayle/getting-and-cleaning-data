# Codebook

# Variables

## subject
Identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

## activity
Subjects in the experiment performed a series of 6 activities.
1 WALKING
2 WALKING_UPSTAIRS
3 WALKING_DOWNSTAIRS
4 SITTING
5 STANDING
6 LAYING

## feature variables
Feature vector with time and frequency domain variables.

# Data

# Transformation
A series of transformations were performed on the raw data to generate the tidy output. The following describes the steps that were taken in the run_analysis.R script.

No manual transformations were preformed on the data outside these steps.

1. Load data from the X_train.txt and X_test.txt files applying the column headers extracted from the features.txt
2. Load the y_train.txt and y_test.txt files containing the activity IDs and replace this data with a text description of the activity from the 'activity_labels.txt'
3. Combine the test and train data for the subject, activity and x data sets in complete data sets for each of their respective data types.
4. Create a logical vector of all the column headers in the x data containing 'mean...' or 'std...' and use this vector to extract only those columns
5. Combine the subject, activity and filtered X data into a single data frame and write to the 'questions_1_to_4.csv'
6. Melt the data from point 5 around the subject and activity fields to create a molten data set.
7. Use the molten dataset to calculate the average for each feature variable for each subject and activity. This data was written to the 'question5.csv' file.  
# Note
A decision was made to excluded the meanFreq columns from the analyis as it was not clear if they shoudl be included or not.