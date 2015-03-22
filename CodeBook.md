##This is a CodeBook that explains use of different Variables in run_analysis.R file

activitylabel — Contains all the activity descriptions from the file activity_label.txt.

features — Contains all the features names from features.txt file.

test_data — Contains all the test data from X_test.txt file.
test_data_subject — Contains Subject Numbers who were part of test dataset from subject_test.txt file.
test_data_act_code — Contains the activity details of the subjects part of test dataset.
test_data_all = Combines and binds Values held by above 3 variables.



train_data — Contains all the test data from X_train.txt file.
train_data_subject — Contains Subject Numbers who were part of test dataset from subject_traint.txt file.
train_data_act_code —Contains the activity details of the subjects part of train dataset.
train_data_all —Combines and binds Values held by above 3 variables.


test_train_all — Contains combined test and train datasets

alldata_labels — Contains combined test datasets as well as activity descriptions on each row


averages — Takes averages of all features by each subject by each activity.
averages.txt — stores values created by averages variables above in a text file
