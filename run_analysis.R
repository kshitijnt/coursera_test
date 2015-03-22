# set working directory
# read activity labels and feature names
setwd("~/coursera_test/UCI_HAR_Dataset")
activitylabel <- read.table("activity_labels.txt", header=FALSE,sep=" ",col.names=c("Code","Label"))
features <- read.table("features.txt", header=FALSE, sep=" ")
featurelabel <- features[,2]

# Read the TEST files individually and then column bind them to form 
#a single data frame for all test data
test_data <- read.table("./test/X_test.txt", col.names=featurelabel)
test_data_subject <- read.table("./test/subject_test.txt",col.names="Subject")
test_data_act_code <- read.table("./test/y_test.txt", col.names="Code")
test_data_all = cbind(test_data_subject,test_data_act_code, test_data)

# Read the TRAINING files individually and then column bind them to form 
#a single data frame for all test data
train_data <- read.table("./train/X_train.txt", col.names=featurelabel)
train_data_subject <- read.table("./train/subject_train.txt",col.names="Subject")
train_data_act_code <- read.table("./train/y_train.txt",col.names="Code")
train_data_all <- cbind(train_data_subject,train_data_act_code,train_data)

#Merge two datasets
test_train_all <- rbind(test_data_all, train_data_all)
# Add activity Labels
alldata_labels = merge(activitylabel, test_train_all,by.activitylabel="Code", by.test_train_all="Code",all=TRUE)

## Take Averages and Submit the file
averages <- ddply(alldata_labels,.(Subject,Code,Label),function(x) colMeans(x[4:ncol(alldata_labels)]))
write.table(averages,"averages.txt",row.names=FALSE)

