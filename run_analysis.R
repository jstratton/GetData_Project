# This is the script for my Getting and Cleaning Data Course Project

# The end goal of this script is to return a tidy data set summarizing the
# accelerometer and gyroscope data.

# Load required libraries
library(dplyr)

#-------------STEP 1: Merging the Training and Test Data------------------------

# First, we need to read in all of the data sets.

# Store the file paths for the Test and Train datasets
test_file <- paste0(getwd(), "/UCI HAR Dataset/test")
train_file <- paste0(getwd(), "/UCI HAR Dataset/train")
        
# Read in the data from X_test.txt for the Test group as a numeric data frame.
test_data <- read.table(file = paste0(test_file, "/X_test.txt"),
                        colClasses = "numeric")

# Read in the subject indentifiers stored in subject_test.txt
test_subjects <- read.table(file = paste0(test_file, "/subject_test.txt"),
                            colClasses = "numeric")

# Read in the activity identifiers stored in y_test.txt
test_activities <- read.table(file = paste0(test_file, "/y_test.txt"),
                              colClasses = "numeric")

# Read in the data from X_train.txt for the Test group as a numeric data frame.
train_data <- read.table(file = paste0(train_file, "/X_train.txt"),
                          colClasses = "numeric")

# Read in the subject indentifiers stored in subject_train.txt
train_subjects <- read.table(file = paste0(train_file, "/subject_train.txt"),
                            colClasses = "numeric")

# Read in the activity identifiers stored in y_train.txt
train_activities <- read.table(file = paste0(train_file, "/y_train.txt"),
                               colClasses = "numeric")

# Read in the test and train column names from features.txt
nombres <- read.table(file = paste0(getwd(), "/UCI HAR Dataset", "/features.txt"),
                      colClasses = "character")

# At this point, we need to convert nombres into legal variable names.
nombres <- make.names(nombres[,2], unique = TRUE)

# Add _subjects and _activities variables to the test_data and train_data frames
test_data <- cbind(test_activities, test_data)
test_data <- cbind(test_subjects, test_data)

train_data <- cbind(train_activities, train_data)
train_data <- cbind(train_subjects, train_data)

# At this point we can merge them using rbind().
merged_data <- rbind(test_data, train_data)

# Name the columns of the merged_data frame to expedite searching
colnames(merged_data) <- c("subject_id", "activity", nombres)

#--------Step 2: Extract the mean and standard deviation data points------------

# First, we have a lot of variables that we don't need any more and should clear.
rm(test_data, test_activities, test_subjects, train_data, train_activities,
   train_subjects, test_file, train_file, nombres)

# Now, we can use dplyr's select() function to get the appopriate columns of data.
merged_data <- select(merged_data, subject_id, activity, contains("mean", ignore.case = FALSE),
                      contains("std"))

#----------Step 3: Convert the Activity IDs to Character Labels-----------------

# First, we need to read the activity_labels.txt file
labels <- read.table(file = paste0(getwd(), "/UCI HAR Dataset", "/activity_labels.txt"),
                     colClasses = "character")

# Overwrite the numeric values in the Activity column with the appropriate label.
merged_data <- mutate(merged_data, activity = labels[activity, 2])

#-------------------Step 4: Clean up the column headings.-----------------------

# Store the column names in nombres
nombres <- colnames(merged_data)

# Remove the unnecessary periods from the variable names
nombres <- gsub(pattern = ".", replacement = "", x = nombres, fixed = TRUE)

# Make nombres lower case
nombres <- tolower(nombres)

# Replace leading t's and f's with time and frequency, respectively
nombres <- gsub(pattern = "^t", replacement = "time_", x = nombres)
nombres <- gsub(pattern = "^f", replacement = "frequency_", x = nombres)

# acc stands for Accelerometer
nombres <- gsub(pattern = "acc", replacement = "accelerometer_", x = nombres)

# gyro stands for gyroscope
nombres <- gsub(pattern = "gyro", replacement = "gyroscope_", x = nombres)

# mag stands for magnitude
nombres <- gsub(pattern = "mag", replacement = "magnitude_", x = nombres)

# meanFreq stands for weighted mean frequency
nombres <- gsub(pattern = "meanfreq", replacement = "weighted_mean", x = nombres)

# std stands for standard deviation
nombres <- gsub(pattern = "std", replacement = "standard_deviation_", x = nombres)

# Replace bodybody with body, since this apparently was a mistake
nombres <- gsub(pattern = "bodybody", replacement = "body", x = nombres)

# Add an underscore after the remaining words to improve variable legibility
nombres <- gsub(pattern = "body", replacement = "body_", x = nombres)
nombres <- gsub(pattern = "mean", replacement = "mean_", x = nombres)
nombres <- gsub(pattern = "jerk", replacement = "jerk_", x = nombres)
nombres <- gsub(pattern = "gravity", replacement = "gravity_", x = nombres)

# Remove trailing underscores
nombres <- gsub(pattern = "_$", replacement = "", x = nombres)

# Change the column names in merged_data to match those in nombres
colnames(merged_data) <- nombres

#-------Step 5: Create an average of the variables for a tidy data set.---------

# Use dplyr's group_by function to group the data by Subject and Activity, and
# then take the mean.
tidy_data <- merged_data %>% group_by(subject_id, activity) %>%
                        summarise_each(funs(mean), -subject_id, -activity)

# Write the tidy_data to a txt file
write.table(tidy_data, file = paste0(getwd(), "/kinematics.txt"),
            row.names = FALSE)
