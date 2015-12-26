
# reference info fof features and activities
features   <- read.table("features.txt", col.names=c("code","feature"))
activities <- read.table("activity_labels.txt", 
                          col.names=c("code","activity"),
                          stringsAsFactors=FALSE)

# load training data
training <- read.table("train/X_train.txt")
training$subject  <- read.table("train/subject_train.txt")
training$activity <- read.table("train/y_train.txt")

# load testing data
testing <- read.table("test/X_test.txt")
testing$subject  <- read.table("test/subject_test.txt")
testing$activity <- read.table("test/y_test.txt")

# combine all measurements in one data frame, restricting to vars of type mean/std
subvars <- grep("-mean\\(|-std\\(",features$feature)
alldata <- rbind(training[,subvars], testing[,subvars])
names(alldata) <- features[subvars, "feature"]

# Remove - and () from column names, and turn all to lower
newcolnames <- gsub('-', '', names(alldata))
newcolnames <- gsub('\\(\\)', '', newcolnames)
newcolnames <- tolower(newcolnames)
names(alldata) <- newcolnames

# combine activity + suject info (beware of order)
subject_all  <- rbind(training[,"subject"],  testing[,"subject"]) 
activity_all <- rbind(training[,"activity"], testing[,"activity"]) 
# fetch activity description from the activities table
# add an id field first to ensure that row order can be preserved by sorting
activity_all$id <- 1:nrow(activity_all)
activity_all <- merge(activity_all, activities, by.x="V1", by.y="code")
activity_all <- activity_all[ order(activity_all$id), "activity"]
# combine activity + suject info in final data frame
alldata$subject  <- subject_all[,1]
alldata$activity <- activity_all

# use dplyr to simplify the dataset
library(dplyr)
g    <- group_by(alldata, subject, activity)
tidy <- summarize_each(g, funs(mean))
# rename the 'std' columns to clarify that these are averages
names(tidy) <- gsub("std", "meanstd", names(tidy))
write.table(tidy, file="tidyset.txt", row.names = FALSE)