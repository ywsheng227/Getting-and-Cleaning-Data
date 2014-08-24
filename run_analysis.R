# read x_train.txt and y_train.txt
x_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")

# read x_test.txt and y_test.txt
x_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")

# read all features and find those containing mean or std
features <- read.table("./UCI HAR Dataset/features.txt")
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")
features.vec <- features[,2]
mean_std <- grep("mean|std", features.vec)

# merge x_train and x_test data
merged_data <- rbind(x_train, x_test)

# creat activity labels for x_train
for (index in (1:nrow(y_train))) {
  y_train[index, 2] <- activity_labels[y_train[index, 1],2]
}

# # creat activity labels for x_test
for (index in (1:nrow(y_test))) {
  y_test[index, 2] <- activity_labels[y_test[index, 1],2]
}

# combine activity labels 
activity <- rbind(y_train, y_test)
names(activity) <- c("Activity_ID","Activity_label")

# select from merged data those with features containing mean or std
selected <- merged_data[,mean_std]
names(selected) <- features.vec[mean_std]

# add activity labels to the selected merged data
tidy_data <- cbind(activity, selected)

# write the tidy data to a file
write.table(tidy_data, file = "./tidy_data.txt")
