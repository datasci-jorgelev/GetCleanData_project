
# Load the tests files
ytest <- read.table("test/y_test.txt")
subjectTest <- read.table("test/subject_test.txt")
xtest <- read.table("test/X_test.txt")

# Load the features.txt
features <- read.table("features.txt", colClasses="character")
# We only are interested in the names
names_features <- features$V2
rm(features)

# Load the names in xtest
names(xtest) <- names_features


# taking just the median and standard deviation
xtest <- xtest[,grep("*(mean|std)\\(\\)*", names(xtest))]

# binding columns from tests tables
test <- cbind(subjectTest, ytest, xtest)
names(test) <- c("subjects", "activities", names(xtest))

rm(xtest, ytest, subjectTest)

##########################################
# Do exactly the same with the train files
###########################################

# Load the train files
ytrain <- read.table("train/y_train.txt")
subjectTrain <- read.table("train/subject_train.txt")
xtrain <- read.table("train/X_train.txt")

# Load the names in xtrain
names(xtrain) <- names_features

# taking just the median and standard deviation
xtrain <- xtrain[,grep("*(mean|std)\\(\\)*", names(xtrain))]

# binding columns from train tables
train <- cbind(subjectTrain, ytrain, xtrain)
names(train) <- c("subjects", "activities", names(xtrain))

##################################################################
# Now merge the training and the test sets to create one data set
##################################################################

trainTest <- rbind(train, test)


# Descriptive activity names to name the activities in the data set
# Load activity labels
activityLabels <- read.table("activity_labels.txt", colClasses="character")
activityLabels <- activityLabels[,2]

trainTest$activities <- unlist(lapply(trainTest$activities, function (x) activityLabels[as.numeric(x)]))

# write the tidy data
write.table(trainTest, "tidyData.txt", row.names=F)


# Make the average tidy data

trainTest$activities <- as.factor(trainTest$activities)
trainTest$subjects <- as.factor(trainTest$subjects)

avg_tidy <-aggregate(trainTest, by=list(trainTest$subjects,trainTest$activities),FUN=mean, na.rm=TRUE)
# remove the irrelevant columns 
avg_tidy <- avg_tidy[,-c(3,4)]
# rename mean variables
mean_vbles <- paste("Mean of ", names(avg_tidy)[-c(1,2)], sep="")
names(avg_tidy) <- c("subjects", "activities", mean_vbles)

# write the avg_tidy
write.table(avg_tidy, "avg_tidyData.txt", row.names=F)




