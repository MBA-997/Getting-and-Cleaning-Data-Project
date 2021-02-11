Data, and Variables:

1) “fileUrl” is used for storing the url of zipped data
2) “fileDest” is used for storing the destinations of various files
3) “getLines” is a function that is used to extract the data that has separator more than one byte
4) “fHandle” is used as a file handler to keep the data of file temporarily
5) “subjectID” contains the volunteer numbers of the respective datasets
6) “activityID” contains the activity numbers of the respective datasets
7) “train” contains the tidy dataset of “X_train” file
8) “features” contains the variable names
9) “vars” is used to duplicate the old variable names
10) “newFeatures” contains the variable names of respective dataset as list
11) “test” contains the tidy dataset of “X_test” file
12) “total” contains the tidy merged dataset of “train”, and “test”
13) “columnNames” contains the names of column
14) “meanNStdIndexes” contains the column names that are related to IDs, standard deviation, and mean
15) “meanNStd” contains the dataset related to the IDs, standard deviation, and mean
16) “meanNStdNames” contains all the column names of “meanNStd”
17) “beautifyVariables” is a function that changes the variables names of dataset to proper names
18) “activityLabel” contains the descriptive activity names
19) “average” contains the independent tidy dataset that has the average of each variable for each activity, and each subject
