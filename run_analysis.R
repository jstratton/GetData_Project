# This is the script for my Getting and Cleaning Data Course Project

# The end goal of this script is to return a tidy data set summarizing the
# accelerometer and gyroscope data.

#**STEP 1: Merging the Training and Test Data

# First, we need to read in all of the data sets.

# Store the file paths for the Test and Train datasets
test_file <- paste(getwd(), "/UCI HAR Dataset/test", sep = "")
train_file <- paste(getwd(), "/UCI HAR Dataset/train", sep = "")
        
# Read in the data from X_test.txt for the Test group as a character data frame.
test_data <- read.table(file = paste(test_file, "/X_test.txt", sep = ""),
                         colClasses = "character")

# Read in the subject indentifiers stored in subject_test.txt
test_subjects <- read.table(file = paste(test_file, "/subject_test.txt", sep = ""),
                            colClasses = "numeric")

# Read in the activity identifiers stored in y_test.txt
test_activities <- read.table(file = paste(test_file, "/y_test.txt", sep = ""),
                              colClasses = "numeric")

# Read in the data from X_train.txt for the Test group as a character data frame.
train_data <- read.table(file = paste(train_file, "/X_train.txt", sep = ""),
                          colClasses = "character")

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

# Rename the columns of the data frames created so far to make them human readable
colnames(test_data) <- nombres[,2]
colnames(train_data) <- nombres[,2]

colnames(test_subjects) <- "Subjects"
colnames(train_subjects) <- "Subjects"

colnames(test_activities) <- "Activities"
colnames(train_activities) <- "Activities"

# Add _subjects and _activities variables to the test_data and train_data frames
test_data <- cbind(test_activities, test_data)
test_data <- cbind(test_subjects, test_data)

train_data <- cbind(train_activities, train_data)
train_data <- cbind(train_subjects, train_data)

# At this point, since a subject can't appear in both data sets, we can merge
# them using rbind().
merged_data <- rbind(test_data, train_data)
