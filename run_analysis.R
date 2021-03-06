install.packages("dplyr")

# Reading Data
subjecttrain <- read.table("subject_train.txt")
xtrain <- read.table("X_train.txt") 
ytrain <- read.table("y_train.txt") 
subjecttest <- read.table("subject_test.txt")
xtest <- read.table("X_test.txt") 
ytest <- read.table("y_test.txt") 

# Headers for dataset
headers <- read.table("features.txt") 
headers <- c("Subject", "Activity", headers[,2]) 

# Merges the training and the test sets to create one data set.
# Merging Data to form a dataset "data"
train <- cbind(subjecttrain, ytrain, xtrain)
test <- cbind(subjecttest, ytest, xtest)
data <- rbind(train, test)
colnames(data) <- headers

# Extracts only the measurements on the mean and standard deviation for each 
# measurement. 
# Extracting only mean and std deviation data to form a dataset "data"
data <- select(data, 1:2, contains("mean()") | contains("std()"))

# Uses descriptive activity names to name the activities in the data set
# Replacing activity labels with activity names to form dataset "data"
data$Activity <- recode(data$Activity,
                        '1'="WALKING",
                        '2'="WALKING_UPSTAIRS",
                        '3'="WALKING_DOWNSTAIRS",
                        '4'="SITTING",
                        '5'="STANDING",
                        '6'="LAYING")

# Appropriately labels the data set with descriptive variable names.
# Replace the short forms in the headers with the full forms.

names(data) <- gsub("^t", "time", names(data))
names(data) <- gsub("Acc", "Accelerometer", names(data))
names(data) <- gsub("Gyro", "Gyroscope", names(data))
names(data) <- gsub("Mag", "Magnitude", names(data))
names(data) <- gsub("^f", "frequency", names(data))
names(data) <- gsub("BodyBody", "Body", names(data))

# From the data set in step 4, creates a second, independent tidy data set with 
# the average of each variable for each activity and each subject.
# For each subject and activity, compute mean for each variable and create
# new dataset "cleandata"

cleandata <- data.frame(matrix(ncol=81, nrow=0))

subjects <- unique(data$Subject)
activities <- unique(data$Activity)

for (i in subjects) {
    for (j in activities) {
        subset <- filter(data, Subject == i & Activity == j)
        result <- c(i, j, colMeans(subset[,-(1:2)]))
        cleandata <- rbind(cleandata, result, make.row.names=FALSE)
    }
}

colnames(cleandata) <- names(data)

# Write dataset "cleandata" to file called "cleandata.csv"
write.table(cleandata, "cleandata.txt", sep = ",", row.names=FALSE)

