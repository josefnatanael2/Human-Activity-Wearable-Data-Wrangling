library(dplyr)

# Step 1: Merges the training and the test sets to create one data set.
train_df <- cbind(x_train, y_train, subject_train)
test_df <- cbind(x_test, y_test, subject_test)
combined_df <- rbind(train_df, test_df)

# Step 2: Extracts only the measurements on the mean and standard deviation for each measurement.
selected_df <- combined_df[, grep("mean|std|label|subject", names(combined_df))]

# Step 3: Uses descriptive activity names to name the activities in the data set.
selected_df$label <- unlist(lapply(selected_df$label, function(x) {activities[x, 2]}))

# Step 4: Appropriately labels the data set with descriptive variable names.
names(selected_df) <- gsub("Acc", "Accelerometer", names(selected_df))
names(selected_df) <- gsub("Gyro", "Gyroscope", names(selected_df))
names(selected_df) <- gsub("BodyBody", "Body", names(selected_df))
names(selected_df) <- gsub("Mag", "Magnitude", names(selected_df))
names(selected_df) <- gsub("^t", "Time", names(selected_df))
names(selected_df) <- gsub("^f", "Frequency", names(selected_df))
names(selected_df) <- gsub("tBody", "TimeBody", names(selected_df))
names(selected_df) <- gsub("-mean()", "Mean", names(selected_df), ignore.case = TRUE)
names(selected_df) <- gsub("-std()", "STD", names(selected_df), ignore.case = TRUE)
names(selected_df) <- gsub("-freq()", "Frequency", names(selected_df), ignore.case = TRUE)
names(selected_df) <- gsub("angle", "Angle", names(selected_df))
names(selected_df) <- gsub("gravity", "Gravity", names(selected_df))
names(selected_df) <- tolower(names(selected_df))
selected_df <- rename(selected_df, activity=label)
selected_df$subject <- as.factor(selected_df$subject) 
names(selected_df) <- gsub("\\.", "", names(selected_df))
# Output cleaned data
write.table(selected_df, "merged_cleaned_data.txt", row.name=FALSE)

# Step 5: From the data set in step 4, creates a second, 
#   independent tidy data set with the average of each variable for each activity and each subject.
library(reshape2)
selected_df.melt <- melt(selected_df, id = c("subject", "activity"))
selected_df.mean <- dcast(selected_df.melt, subject + activity ~ variable, mean)
# Output tidy mean data
write.table(selected_df.mean, "tidy.txt", row.names = FALSE, quote = FALSE)


