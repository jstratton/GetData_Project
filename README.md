# GetData_Project

## This project deals with analyzing data from wearable computers.

## The source of this data set (not included in the repo due to size) is: Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

## The original data can be found here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

# Contents:
* CodeBook.md contains an explanation of each of the variable names in the tidy data set.
* run_analysis.R is an R script for reading in the data and creating a tidy data set (ommited for size)

# run_analysis.R high level code summary

## Step 1: Merging the Training and Test Data
1. Read in the data regarding the subjects, variable names, and the test and train data sets.
2. Insert the associated subject and activity identifiers on the left hand side of the test and train data sets.
3. Merge the two data sets using rbind. I appended the train data to the test data.
4. Reformat the variable names to comply with R syntax.
5. Name the columns of the merged data set using the reformatted variable names. This requires labeling the subject id and activity columns manually, since this wasn't present in the original variable names.

## Step 2: Extract the columns containing means and standard deviations from the merged data set.
* I chose to use dplyr's select function to accomplish this.
* Every standard deviation result ended with std(). So I could simply choose to pass contains("std") to select to get this data.
* I decided to use a case sensitive "mean" as my selection string for the mean values. This extracts every column that is an average of some other value.
* Note: With these select paramters, the angle data points are excluded from the data set. This is because the assignment asked us to extract only the measurements on the mean and standard deviation. Even though the angle measurements are derived from the means, they aren't strictly speaking mean values.

## Step 3: Convert the Activity IDs to Character Labels
1. Read in the activity labels from the activity labels file.
2. Use dplyr's mutate function to replace each numeric id with the appropriate character label.

## Step 4: Clean up the Column Headings

### The column headings are a mess at this point:
*Prior reformatting of the variable names added a lot of ugly periods.
*All of the variable names are abbreviated and hard to interpret.

### To fix this, I carried out the following operations

1. Remove the periods from the column names.
2. Make all the column names lowercase.
3. Replaced bodybody with body, since that is apparently an error: https://class.coursera.org/getdata-031/forum/thread?thread_id=130
4. Spelled out all of the abbreviated parameters, adding an underscore after each word to make it human readable.

## Step 5: Create an average of the variables for a tidy data set
* Group the data points by subject id and activity using dplyr's group_by() function.
* Use the summarise_each dplyr function to take the average with in each group.

## The resulting data frame meets Hadley Wickham's definition of tidy data (Sec 2.3, http://vita.had.co.nz/papers/tidy-data.pdf)

1. Each variable forms a column, and multiple variables aren't stored in a single column.
2. Each distinct observation forms a row, and is identified by a unique combination of subject_id and activity.
3. Each type of observational unit forms a table. I would classify the tabulated observations as a single type on the grounds that:
	a. All of the data shares a common experimental history
	b. Each observation underwent identical manipulations
	c. Every observation has an identical format.
