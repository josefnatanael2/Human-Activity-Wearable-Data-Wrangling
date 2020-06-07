# **Human Activity Recognition Using Smartphones Data Wrangling**

This repository cleans the data from:
[Source: UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)


## Files

There are three script files.

 - `data_download.R` will download the dataset, and unzip it to UCI HAR Dataset folder
 - `text_to_df.R` will create dataframes from the dataset's text files
 - `run_analysis.R` will perform the five core tasks:
	 - Merges the training and the test sets to create one data set.
	 - Extracts only the measurements on the mean and standard deviation for each measurement.
	 - Uses descriptive activity names to name the activities in the data set.
	 - Appropriately labels the data set with descriptive variable names.
	 - From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

There will be one cleaned data file

 - merged_cleaned_data.txt
