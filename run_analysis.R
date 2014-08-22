#######################################################################
#Step 1 - Merge the training and the test sets to create one data set#
#######################################################################

#Load training data from the 'train' directory
X_train <- read.table("./train/X_train.txt")

#Load test data from the 'test' directory
X_test <- read.table("./test/X_test.txt")

#Merge the training and test sets
X_all <- rbind(X_train, X_test)


#######################################################################
#Step 2 - Extract only the measurements on the mean and standard     #
#deviation for each measurement                                       #
#######################################################################

#Load the feature names from features.txt
featureNames <- as.character(read.table("features.txt")[,2])
#For some reason a few of the feature names in this file contain 'BodyBody',
#correct that by replacing by 'Body'
featureNames <- gsub(pattern="BodyBody", replacement="Body", x=featureNames, fixed=TRUE)

#Filter the feature names to only include those that are mean or standard deviation measurements
#First find the indices of the feature names containing...
#"-mean()"
mean_feature_indices <- grep("-mean()", featureNames, fixed=TRUE)
#or containing "-std()"
std_feature_indices <- grep("-std()", featureNames, fixed=TRUE)
#generate the new names for mean() type features by removing "mean()" and preceding with "m"
mean_feature_names <- paste("m", gsub("-mean()", "", featureNames[mean_feature_indices], fixed=TRUE), sep="")
#generate the new names for std() type features by removing "std()" and preceding with "s"
std_feature_names <- paste("s", gsub("-std()", "", featureNames[std_feature_indices], fixed=TRUE), sep="")


#######################################################################
#Step 3 - Use descriptive activity names to name the activities in    #
#the data set                                                         #
#######################################################################

#Read descriptions of the activities from activity_labels.txt as a character vector
activityLabelDescriptions <- as.character(read.table("activity_labels.txt")[,2])

#Load the activity labels from the 'train' directory
label_train <- read.table("./train/y_train.txt")[,1]

#Load the activity from the 'test' directory
label_test <- read.table("./test/y_test.txt")[,1]

#merge the train and test labels as a factor variable
#use activityLabelDescriptions as labels for the factor
label_all <- factor(c(label_train, label_test), labels=activityLabelDescriptions)

#######################################################################
#Create the first data set, tidy_data1.txt                            #
#######################################################################

#load the train subjects
subject_train <- read.table("./train/subject_train.txt")[,1]

#load the test subjects
subject_test <- read.table("./test/subject_test.txt")[,1]

#merge the train and test subjects
subject_all <- c(subject_train, subject_test)

#now build the first data set
#use the mean() and std() feature indices to subset
tidy_data1 <- X_all[,c(mean_feature_indices, std_feature_indices)]

#name the features
names(tidy_data1) <- c(mean_feature_names, std_feature_names)

#add the subjects
tidy_data1 <- cbind(tidy_data1, subject=subject_all)

#add the activity labels
tidy_data1 <- cbind(tidy_data1, activity=label_all)

#write the data set to file
write.table(file="tidy_data.txt", x=tidy_data1, row.names=FALSE)

