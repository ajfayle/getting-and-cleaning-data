
library(reshape2)

# Read in the data from all the relevant files
activity_labels <- read.table( 'activity_labels.txt', col.names=c('activity_id', 'activity_name'))
features        <- read.table('features.txt', col.names = c('feature_id', 'feature_name'))

subject_train   <- read.table('train/subject_train.txt', col.names = c('subject'))
subject_test    <- read.table('test/subject_test.txt', col.names = c('subject'))

# Features (listed in 'features.txt') correspond to the columns
# of data that appear in 'X_test.txt' and 'X_train.txt'
x_train         <- read.table('train/X_train.txt', col.names = features$feature_name)
x_test          <- read.table('test/X_test.txt', col.names = features$feature_name)

# Activity labels in 'activity_labels.txt' correspond
# to the labels in 'y_test.txt' and 'y_train.txt'
y_train         <- read.table('train/y_train.txt')
y_test          <- read.table('test/y_test.txt')

# Convert Test and Training labels to activites
activity_train <- data.frame( activity = activity_labels$activity_name[y_train$V1] )
activity_test  <- data.frame( activity = activity_labels$activity_name[y_test$V1] )

# Combine each of the 3 sets of test and train data together
subject_all  <- rbind(subject_test, subject_train)
activity_all <- rbind(activity_test, activity_train)
x_all        <- rbind(x_test, x_train)

# Filter out only mean and std columns
x_filtered <- x_all[grepl('(mean|std)\\.\\.\\.', colnames(x_all))]

# Combine all data into a single data set
all_data <- cbind(subject_all, activity_all, x_filtered)

# Write data to file
write.table(all_data, file="questions_1_to_4.txt", row.names=FALSE)

# Melt data by subject and activity
molten_data <- melt(all_data, id.vars = c('subject', 'activity'))
average_data <- dcast(molten_data, subject + activity ~ variable, mean)
write.table(average_data, file="question_5.txt", row.names=FALSE)

