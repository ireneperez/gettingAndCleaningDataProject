library("reshape2")

# We load all the data in memory
x_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
x_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
features <- (read.table("./UCI HAR Dataset/features.txt"))[,2]
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
activityNames <- (read.table("./UCI HAR Dataset/activity_labels.txt"))[,2]

# We set the name of the columns
colnames(x_train) <- features
colnames(x_test) <- features
colnames(subject_test) <- "subject"
colnames(subject_train) <- "subject"

# We select only the columns with the keywords mean or strandard deviation (std)
selectedCol <- grepl("mean|std",features)
x_train <- x_train[,selectedCol]
x_test <- x_test[,selectedCol]

# We add the labels for the activities
y_test[,1] <- activityNames[y_test[,1]]
names(y_test) = c("Activity_Label")

y_train[,1] <- activityNames[y_train[,1]]
names(y_train) = c("Activity_Label")

# We combine the data by binding all the columns
train_data <- cbind(subject_train, y_train, x_train)
test_data <- cbind(subject_test, y_test, x_test)

# We combine the data by binding the rows
allData <- rbind(train_data,test_data)

# We preserve the dataToKeep coulumns and we melt the order ones to average them
# with the dcast function
dataToKeep <- c("subject", "Activity_Label")
dataToAverage <- setdiff(colnames(allData), dataToKeep)
melt_data <- melt(allData, id = dataToKeep, measure.vars = dataToAverage)

# We keep the first two columns and we calculate the means of the others
tidy = dcast(melt_data, subject + Activity_Label ~ variable, mean)

# We write the result in a text file
write.table(tidy, file = "./tidy_data.txt", row.name=FALSE)