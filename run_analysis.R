#######################################################################
#Read the training and test data and merge  to create one data set
#######################################################################

#Load training data from the 'train' directory
X_train <- read.table("./train/X_train.txt")

#Load test data from the 'test' directory
X_test <- read.table("./test/X_test.txt")

#Merge the training and test sets
#note : train before test
X_all <- rbind(X_train, X_test)


#######################################################################
#Read the feature names. Clean feature names, and extract indices of
#mean and standard deviation features
#######################################################################

#Load the feature names from features.txt
featureNames <- as.character(read.table("features.txt")[,2])

#For some reason a few of the feature names in this file contain 'BodyBody',
#correct that by replacing by 'Body'
featureNames <- gsub(pattern="BodyBody", replacement="Body", x=featureNames, fixed=TRUE)

#Characters like '-', ',' , '(' and ')' in the feature names may cause 
#downstream problems, so replace them
#replace '-' by '_'
featureNames <- gsub(pattern="-", replacement="_", x=featureNames, fixed=TRUE)
#replace ',' by '_'
featureNames <- gsub(pattern=",", replacement="_", x=featureNames, fixed=TRUE)
#replace '()' by '_'
featureNames <- gsub(pattern="()", replacement="_", x=featureNames, fixed=TRUE)
#replace '(' by '_'
featureNames <- gsub(pattern="(", replacement="_", x=featureNames, fixed=TRUE)
#replace ')' by '_'
featureNames <- gsub(pattern=")", replacement="_", x=featureNames, fixed=TRUE)
#these replacements cause '__' in some feature names, replace by a single '_'
featureNames <- gsub(pattern="__", replacement="_", x=featureNames, fixed=TRUE)

#Find the indices of the mean and standard deviation feature names by looking for
#"_mean_"
mean_feature_indices <- grep("_mean_", featureNames, fixed=TRUE)
#and "_std_"
std_feature_indices <- grep("_std_", featureNames, fixed=TRUE)
#generate  new names for mean type features by replacing '_mean_' with '_' and preceding with 'm'
mean_feature_names <- paste("m", gsub("_mean_", "_", featureNames[mean_feature_indices], fixed=TRUE), sep="")
#generate the new names for std type features by replacing '_std_' with '_' and preceding with 's'
std_feature_names <- paste("s", gsub("_std_", "_", featureNames[std_feature_indices], fixed=TRUE), sep="")

#finally, we end up with some feature names ending in '_', fix that
mean_feature_names <- sub(pattern="_$", replacement="",x=mean_feature_names)
std_feature_names <- sub(pattern="_$", replacement="",x=std_feature_names)
featureNames <- sub(pattern="_$", replacement="",x=featureNames)


#######################################################################
#Read the activity labels for both train and test. Create a factor
#variable using the textual descriptions for the activities
#######################################################################

#Read descriptions of the activities from activity_labels.txt as a character vector
activityLabelDescriptions <- as.character(read.table("activity_labels.txt")[,2])

#Load the activity labels from the 'train' directory
label_train <- read.table("./train/y_train.txt")[,1]

#Load the activity from the 'test' directory
label_test <- read.table("./test/y_test.txt")[,1]

#merge the train and test labels as a factor variable
#use activityLabelDescriptions as labels for the factor
#note : train before test
label_all <- factor(c(label_train, label_test), labels=activityLabelDescriptions)

#######################################################################
#Create and save the first tidy data set, tidy_data1.txt
#This data set contains features for mean and standard deviation 
#measurements, as well as subject and activity
#######################################################################

#load the train subjects
subject_train <- read.table("./train/subject_train.txt")[,1]

#load the test subjects
subject_test <- read.table("./test/subject_test.txt")[,1]

#merge the train and test subjects
#note : train before test
subject_all <- c(subject_train, subject_test)

#now start building the first data set
#use the mean() and std() feature indices to subset
#note : mean features before std features
tidy_data1 <- X_all[,c(mean_feature_indices, std_feature_indices)]

#name the features in the dataset
#note : mean features before std features
names(tidy_data1) <- c(mean_feature_names, std_feature_names)

#add the subjects as a feature named 'subject'
tidy_data1 <- cbind(tidy_data1, subject=subject_all)

#add the activity labels factor as a feature named 'activity'
tidy_data1 <- cbind(tidy_data1, activity=label_all)

#and finally, write the data set to file
write.table(file="tidy_data1.txt", x=tidy_data1, row.names=FALSE)

#######################################################################
#Create and save the second data set, tidy_data2.txt
#This data set contains averages for each feature, grouped by each
#activity and each subject
#######################################################################

#aggregate over all features in tidy_data1 except subject and activity, using the mean function,
#grouping by subject and activity. Use different names for the group by features to avoid confusion
tidy_data2 <- aggregate(x=tidy_data1[,1:66], 
                        by=list("forSubject"=tidy_data1$subject, "forActivity"=tidy_data1$activity), 
                        FUN=mean)

#write the data set to file
write.table(file="tidy_data2.txt", x=tidy_data2, row.names=FALSE)
