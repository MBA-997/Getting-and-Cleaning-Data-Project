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


The variables of the final Dataset:

"1" "subjectID"
"2" "activity"
"3" "timeBodyAcc-mean()-Y"
"4" "timeBodyAcc-mean()-Z"
"5" "timeBodyAcc-std()-X"
"6" "timeBodyAcc-std()-Y"
"7" "timeBodyAcc-std()-Z"
"8" "timeGravityAcc-mean()-X"
"9" "timeGravityAcc-mean()-Y"
"10" "timeGravityAcc-mean()-Z"
"11" "timeGravityAcc-std()-X"
"12" "timeGravityAcc-std()-Y"
"13" "timeGravityAcc-std()-Z"
"14" "timeBodyAccJerk-mean()-X"
"15" "timeBodyAccJerk-mean()-Y"
"16" "timeBodyAccJerk-mean()-Z"
"17" "timeBodyAccJerk-std()-X"
"18" "timeBodyAccJerk-std()-Y"
"19" "timeBodyAccJerk-std()-Z"
"20" "timeBodyGyro-mean()-X"
"21" "timeBodyGyro-mean()-Y"
"22" "timeBodyGyro-mean()-Z"
"23" "timeBodyGyro-std()-X"
"24" "timeBodyGyro-std()-Y"
"25" "timeBodyGyro-std()-Z"
"26" "timeBodyGyroJerk-mean()-X"
"27" "timeBodyGyroJerk-mean()-Y"
"28" "timeBodyGyroJerk-mean()-Z"
"29" "timeBodyGyroJerk-std()-X"
"30" "timeBodyGyroJerk-std()-Y"
"31" "timeBodyGyroJerk-std()-Z"
"32" "timeBodyAccMag-mean()"
"33" "timeBodyAccMag-std()"
"34" "timeGravityAccMag-mean()"
"35" "timeGravityAccMag-std()"
"36" "timeBodyAccJerkMag-mean()"
"37" "timeBodyAccJerkMag-std()"
"38" "timeBodyGyroMag-mean()"
"39" "timeBodyGyroMag-std()"
"40" "timeBodyGyroJerkMag-mean()"
"41" "timeBodyGyroJerkMag-std()"
"42" "frequencyBodyAcc-mean()-X"
"43" "frequencyBodyAcc-mean()-Y"
"44" "frequencyBodyAcc-mean()-Z"
"45" "frequencyBodyAcc-std()-X"
"46" "frequencyBodyAcc-std()-Y"
"47" "frequencyBodyAcc-std()-Z"
"48" "frequencyBodyAcc-meanFreq()-X"
"49" "frequencyBodyAcc-meanFreq()-Y"
"50" "frequencyBodyAcc-meanFreq()-Z"
"51" "frequencyBodyAccJerk-mean()-X"
"52" "frequencyBodyAccJerk-mean()-Y"
"53" "frequencyBodyAccJerk-mean()-Z"
"54" "frequencyBodyAccJerk-std()-X"
"55" "frequencyBodyAccJerk-std()-Y"
"56" "frequencyBodyAccJerk-std()-Z"
"57" "frequencyBodyAccJerk-meanFreq()-X"
"58" "frequencyBodyAccJerk-meanFreq()-Y"
"59" "frequencyBodyAccJerk-meanFreq()-Z"
"60" "frequencyBodyGyro-mean()-X"
"61" "frequencyBodyGyro-mean()-Y"
"62" "frequencyBodyGyro-mean()-Z"
"63" "frequencyBodyGyro-std()-X"
"64" "frequencyBodyGyro-std()-Y"
"65" "frequencyBodyGyro-std()-Z"
"66" "frequencyBodyGyro-meanFreq()-X"
"67" "frequencyBodyGyro-meanFreq()-Y"
"68" "frequencyBodyGyro-meanFreq()-Z"
"69" "frequencyBodyAccMag-mean()"
"70" "frequencyBodyAccMag-std()"
"71" "frequencyBodyAccMag-meanFreq()"
"72" "frequencyBodyBodyAccJerkMag-mean()"
"73" "frequencyBodyBodyAccJerkMag-std()"
"74" "frequencyBodyBodyAccJerkMag-meanFreq()"
"75" "frequencyBodyBodyGyroMag-mean()"
"76" "frequencyBodyBodyGyroMag-std()"
"77" "frequencyBodyBodyGyroMag-meanFreq()"
"78" "frequencyBodyBodyGyroJerkMag-mean()"
"79" "frequencyBodyBodyGyroJerkMag-std()"
"80" "frequencyBodyBodyGyroJerkMag-meanFreq()"
"81" "angle(tBodyAccMean,gravity)"
"82" "angle(tBodyAccJerkMean),gravityMean)"
"83" "angle(tBodyGyroMean,gravityMean)"
"84" "angle(tBodyGyroJerkMean,gravityMean)"
"85" "angle(X,gravityMean)"
"86" "angle(Y,gravityMean)"
"87" "angle(Z,gravityMean)"
