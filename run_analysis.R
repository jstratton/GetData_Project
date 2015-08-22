# This is the script for my Getting and Cleaning Data Course Project

# The end goal of this script is to return a tidy data set summarizing the
# accelerometer and gyroscope data.

# Load required libraries
library(dplyr)

#**STEP 1: Merging the Training and Test Data

# First, we need to read in all of the data sets.

# Store the file paths for the Test and Train datasets
test_file <- paste(getwd(), "/UCI HAR Dataset/test", sep = "")
train_file <- paste(getwd(), "/UCI HAR Dataset/train", sep = "")
        
# Read in the data from X_test.txt for the Test group as a numeric data frame.
test_data <- read.table(file = paste(test_file, "/X_test.txt", sep = ""),
                         colClasses = "numeric")

# Read in the subject indentifiers stored in subject_test.txt
test_subjects <- read.table(file = paste(test_file, "/subject_test.txt", sep = ""),
                            colClasses = "numeric")

# Read in the activity identifiers stored in y_test.txt
test_activities <- read.table(file = paste(test_file, "/y_test.txt", sep = ""),
                              colClasses = "numeric")

# Read in the data from X_train.txt for the Test group as a numeric data frame.
train_data <- read.table(file = paste(train_file, "/X_train.txt", sep = ""),
                          colClasses = "numeric")

# Read in the subject indentifiers stored in subject_train.txt
train_subjects <- read.table(file = paste(train_file, "/subject_train.txt", sep = ""),
                            colClasses = "numeric")

# Read in the activity identifiers stored in y_train.txt
train_activities <- read.table(file = paste(train_file, "/y_train.txt", sep = ""),
                              colClasses = "numeric")

# Read in the column names from features.txt; this is the same for both train and
# test data.
nombres <- read.table(file = paste(getwd(), "/UCI HAR Dataset", "/features.txt",
                                   sep = ""),
                      colClasses = "character")

# At this point, nombres is filled with values that don't follow the
# variable name syntax in R. So we need to clean the data using make.names
nombres <- make.names(nombres[,2], unique = TRUE)

# Add _subjects and _activities variables to the test_data and train_data frames
test_data <- cbind(test_activities, test_data)
test_data <- cbind(test_subjects, test_data)

train_data <- cbind(train_activities, train_data)
train_data <- cbind(train_subjects, train_data)

# At this point, since a subject can't appear in both data sets, we can merge
# them using rbind().
merged_data <- rbind(test_data, train_data)

# Rename the columns of the merged_data frame to enable the searching for the
# next step.
colnames(merged_data) <- c("Subject_ID", "Activity", nombres)

#** Step 2: Extract the measurements of the mean and standard deviation for each
#           measurement.

# First, we have a lot of variables that we don't need any more and should clear.
rm(test_data, test_activities, test_subjects, train_data, train_activities,
   train_subjects, test_file, train_file, nombres)

# Now, we can use dplyr's select() function to get the appopriate columns of data.
# Note: I assumed that we needed to get any variables that have the word "mean"
# or "std" in their name. I checked, and there are no cases where this will give
# us trouble with the current data set.

merged_data <- select(merged_data, Subject_ID, Activity, contains("mean"),
                      contains("std"))

#** Step 3: Convert the activity data from numeric factors to human readable txt.

# First, we need to read the activity_labels.txt file
labels <- read.table(file = paste(getwd(), "/UCI HAR Dataset",
                                  "/activity_labels.txt", sep = ""),
                     colClasses = "character")

# Overwrite the numeric values in the Activity column with the appropriate label.
merged_data <- mutate(merged_data, Activity = labels[Activity, 2])

#** Step 4: I definitely need to fix the clunky variable names in my data frame

#** Step 5: Create an average of the variables in a tidy data set.

# Use dplyr's group_by function to group the data by Subject and Activity, and
# then take the mean.
tidy_data <- merged_data %>% group_by(Subject_ID, Activity) %>%
                        summarise_each(funs(mean), -Subject_ID, -Activity)
