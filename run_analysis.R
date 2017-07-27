
# 0. Download and unzip the data
################################

if(!file.exists("dataset.zip")){
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile = "./dataset.zip")
}

if(!file.exists("UCI HAR Dataset")){
    unzip("dataset.zip")
}

# 1.Merge the training and the test sets to create one data set.
################################################################

#Read data from the files

features <- read.table("UCI HAR Dataset/features.txt")
activityLabels <- read.table("UCI HAR Dataset/activity_labels.txt")

subjectTest <- read.table("UCI HAR Dataset/test/subject_test.txt")
xTest <- read.table("UCI HAR Dataset/test/X_test.txt")
yTest <- read.table("UCI HAR Dataset/test/y_test.txt")

subjectTrain <- read.table("UCI HAR Dataset/train/subject_train.txt")
xTrain <- read.table("UCI HAR Dataset/train/X_train.txt")
yTrain<- read.table("UCI HAR Dataset/train/y_train.txt")

#Merge the traing and the test sets
xTable <- rbind(xTest, xTrain)
yTable <- rbind(yTest, yTrain)
subject <- rbind(subjectTest, subjectTrain)

#Assign column names
names(xTable) <- features [,2]
names(yTable) <- "Activity"
names(subject) <- "Subject"
names(activityLabels) <- c("ActivityID", "ActivityName")

#Create the final data set
data <- cbind(subject, yTable, xTable)

# 2. Extract only the measurements on the mean and standard deviation for each measurement.
############################################################################################

# Extract columns with "mean" or "std" in their names
z <- grep("\\<mean()\\>|\\<std()\\>", names(data)) 
data <- data[,c(1,2,z)]


# 3.Use descriptive activity names to name the activities in the data set
##########################################################################

data$Activity <- factor(data$Activity,
                          levels = activityLabels$ActivityID,
                          labels = activityLabels$ActivityName)

# 4.Appropriately label the data set with descriptive variable names
##########################################################################

names(data) <- gsub("mean", "Mean", names(data))
names(data) <- gsub("std", "Std", names(data))
names(data) <- gsub("[()-]", "", names(data))
names(data) <- gsub("^t", "Time", names(data))
names(data) <- gsub("^f", "Freq", names(data))
names(data) <- gsub("Acc", "Accelerometer", names(data))
names(data) <- gsub("Gyro", "Gyroscope", names(data))
names(data) <- gsub("BodyBody", "Body", names(data))

# 5.Create a second, independent tidy data set with the average of each variable for each activity and each subject.
####################################################################################################################

library(dplyr)
tidy <- data %>% group_by(Activity, Subject) %>% summarise_all(funs(mean)) %>% arrange(desc(Activity), Subject)
write.table(tidy, "tidy.txt", row.names = FALSE, quote = FALSE)



