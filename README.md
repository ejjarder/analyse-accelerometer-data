analyse-accelerometer-data
==========================

For completion of requirements for Getting and Cleaning Data at Coursera.

Introduction
------------
This project contains a script that will process raw accelerometer data. It
will create a summary of the mean and std accelerometer values of that raw
data. The output data is a space delimited text table.

Usage
-----
The user must first get a copy of the script, and source it in his script or
R console.

The script can then be used in three ways:

### Data is Available in a Local Directory:
Call the run.analysis() function, passing the directory where the data is
stored, and the name of the file where the output will be written.

```
run.analysis(<data directory>, <output text file>)
```

### Download Data Online:
Call the download.and.run.analysis() function, passing the url of the zip file.
This will store and unzip the data in a temporary directory, then call
run.analysis() on that directory. The temporary files are deleted afterwards.

```
download.and.run.analysis(<data directory>, <output text file>)
```

### Get the Cleaned up Data Frame:
Create an analyser object using the make.analyser() function. The result is
taken from the mean.std.data member of the analyser object.

```
analyser <- make.analyser(<data directory>)

analyser$mean.std.data
```

Implementation
--------------
### Dependencies
This script is dependent on the plyr package for the ddply() function, and the
reshape2 package for the melt() and dcast() functions.

These packages are automatically loaded upon sourcing the script.

### Steps
These are the steps done by the script to get the required output:

1. Read the label data from features.txt and activity_labels.txt
2. Load the contents of the 'test' and 'trial' folders in this order:
    1. Load subject ids from the 'subject_*.txt'. Assign column name of
       'subject.id'
    2. Load activity data from the 'Y_*.txt'. Assign proper label taken from
       activity_labels.txt by merging. Retain only the column of the proper
       labels. Assign the name 'activity' to the column.
    3. Load the accelerometer data from the 'X_*.txt'. Assign labels taken from
       features.txt. Retain only the columns with mean and std values.
    4. cbind ()the data loaded above, with subject.id in the first column,
       activity in the second column, and the accelerometer data for the rest.
3. rbind() the two data sets from step 2.
4. melt() the data so the accelerometer data column names will become data
   frame values.
5. Get the average of the values with respect to the 'subject.id', 'activity',
   and the melted column names.
6. Reshape it back with dcast(), putting the column names back from values to
   column names, and filling the values with the mean computed from the
   previous step. Store this result in a variable.

It is then up to the user what to do with the result. The run.analysis()
function will automatically write the result in the specified text file.

Data Dictionary
---------------
The data dictionary can be found in the [CodeBook.md](CodeBook.md) file in this
repository.
