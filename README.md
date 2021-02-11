# Getting-and-Cleaning-Data-Project

Libraries used: dplyr, data.table

fileUrl is set to the download link
fileDest contains the destination file location
download.file downloads the zipped dataset

‘getLines’ function has arguments(data, separator, replacement of separator), it reads the lines of the dataset, utilizes function ‘gsub’ to replace all the separators with replacement, builds up a connection, and reads the table off the connection.

fileDest is updated with new destination
activityID is initialized with numbers of the activity by using readLines function
fileDest is updated again
‘train’ variable utilizes getLines function to extract the dataset, and one extra column to the left is eliminated as it was filled with NAs.

fileDest is updated again.
‘features’ is initialized with the names of variables of dataset using function read.table, and is then converted to dataframe with only one column
Vars, and newFeatures is initialized with list with the size to the amount of variables, a for loop initializes the ‘vars’ with old names by using function ‘paste0’
‘Setnames’ function replaces the old variable names with new names to the train dataset.
‘activityID’ is converted to a data frame, and both activityID, and subjectID are binded to the dataset by using ‘cbind’ function.

fileDest is updated to new location
‘test’ is initialized with the ‘X_test’ dataset by using the ‘getLines’ function, and an extra column filled with NAs is removed.
‘setnames’ function is used again to assign the correct variable names of the dataset.
The ‘subjectID’, and ‘activityID’ is initialized with ‘subject_test’, and ‘y_test’ data respectively, and then both are combined to the ‘test’ dataset.


‘total’ is the merged dataset of ‘train’, and ‘test’
‘columnNames’ containing the variable names is fed to grep function, so that all the mean, and standard deviation columns along with respective IDs indexes can be extracted, and stored in ‘meanNStdIndexes’.
The column names are then made into proper variable names with the function ‘beautifyVariables’ which changes the ‘f’ to frequency, and ‘t’ to time.

‘fileDest’ is updated to ‘activity_labels’
‘activityLabel’ is filled with activity descriptive names, an extra column filled with index numbers is removed.
‘meanNStd’ is arranged in ascending order w.r.t ‘activityID’, then factors are used to label activityID with proper names of variables extracted earlier to the merged dataset.
The variable ‘activityID’ is renamed to ‘activity’

Dataset with the name ‘average’ is formed by using piping along with group_by function to group it by ‘subjectID’, and  ‘activity’.
Summarise is then used to calculate the average by using ‘across’ function which accepts the index of columns and performs mean
‘average’ dataset is then arranged on the basis of ‘subjectID’
Renaming is done, and the column names are made proper by using ‘beautifyVariables’ function.
