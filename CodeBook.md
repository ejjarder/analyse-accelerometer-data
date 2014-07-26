# Data Dictionary - run_analysis.R output

This contains the descriptions of the labels of the data frame produced by the
developer's run_analysis.R script.

---

## Identifiers

The following identify the subject and the activity done.

| Column Name | Class | Description |
|:------------|:-----:|------------:|
| subject_id | numeric | The id pertaining to the subject tested |
| activity | character | The name of the activity |

---

## Results

The following attributes pertain to the accelerometer data. Column names are
taken from features.txt

### Body Acceleration

| Column Name | Class | Description |
|:------------|:-----:|------------:|
| tBodyAcc-mean()-X | numeric | Body Acceleration X Mean |
| tBodyAcc-mean()-Y | numeric | Body Acceleration Y Mean |
| tBodyAcc-mean()-Z | numeric | Body Acceleration Z Mean |
| tBodyAcc-std()-X | numeric | Body Acceleration X SD |
| tBodyAcc-std()-Y | numeric | Body Acceleration Y SD |
| tBodyAcc-std()-Z | numeric | Body Acceleration Z SD |

---
### Gravity Acceleration

| Column Name | Class | Description |
|:------------|:-----:|------------:|
| tGravityAcc-mean()-X | numeric | Gravity Acceleration X Mean |
| tGravityAcc-mean()-Y | numeric | Gravity Acceleration Y Mean |
| tGravityAcc-mean()-Z | numeric | Gravity Acceleration Z Mean |
| tGravityAcc-std()-X | numeric | Gravity Acceleration X SD |
| tGravityAcc-std()-Y | numeric | Gravity Acceleration Y SD |
| tGravityAcc-std()-Z | numeric | Gravity Acceleration Z SD |

---
### Body Acceleration Jerk

| Column Name | Class | Description |
|:------------|:-----:|------------:|
| tBodyAccJerk-mean()-X | numeric | Body Acceleration Jerk X Mean |
| tBodyAccJerk-mean()-Y | numeric | Body Acceleration Jerk Y Mean |
| tBodyAccJerk-mean()-Z | numeric | Body Acceleration Jerk Z Mean |
| tBodyAccJerk-std()-X | numeric | Body Acceleration Jerk X SD |
| tBodyAccJerk-std()-Y | numeric | Body Acceleration Jerk Y SD |
| tBodyAccJerk-std()-Z | numeric | Body Acceleration Jerk Z SD |

---
### Body Gyroscope

| Column Name | Class | Description |
|:------------|:-----:|------------:|
| tBodyGyro-mean()-X | numeric | Body Gyroscope X Mean |
| tBodyGyro-mean()-Y | numeric | Body Gyroscope Y Mean |
| tBodyGyro-mean()-Z | numeric | Body Gyroscope Z Mean |
| tBodyGyro-std()-X | numeric | Body Gyroscope X SD |
| tBodyGyro-std()-Y | numeric | Body Gyroscope Y SD |
| tBodyGyro-std()-Z | numeric | Body Gyroscope Z SD |

---
### Body Gyroscope Jerk

| Column Name | Class | Description |
|:------------|:-----:|------------:|
| tBodyGyroJerk-mean()-X | numeric | Body Gyroscope Jerk X Mean |
| tBodyGyroJerk-mean()-Y | numeric | Body Gyroscope Jerk Y Mean |
| tBodyGyroJerk-mean()-Z | numeric | Body Gyroscope Jerk Z Mean |
| tBodyGyroJerk-std()-X | numeric | Body Gyroscope Jerk X SD |
| tBodyGyroJerk-std()-Y | numeric | Body Gyroscope Jerk Y SD |
| tBodyGyroJerk-std()-Z | numeric | Body Gyroscope Jerk Z SD |

---
### Body Acceleration Magnitude

| Column Name | Class | Description |
|:------------|:-----:|------------:|
| tBodyAccMag-mean() | numeric | Body Acceleration Magnitude Mean |
| tBodyAccMag-std() | numeric | Body Acceleration Magnitude SD |

---
### Gravity Acceleration Magnitude

| Column Name | Class | Description |
|:------------|:-----:|------------:|
| tGravityAccMag-mean() | numeric | Gravity Acceleration Magnitude Mean |
| tGravityAccMag-std() | numeric | Gravity Acceleration Magnitude SD |

---
### Body Acceleration Jerk Magnitude

| Column Name | Class | Description |
|:------------|:-----:|------------:|
| tBodyAccJerkMag-mean() | numeric | Body Acceleration Jerk Magnitude Mean |
| tBodyAccJerkMag-std() | numeric | Body Acceleration Jerk Magnitude SD |

---
### Body Gyroscope Magnitude

| Column Name | Class | Description |
|:------------|:-----:|------------:|
| tBodyGyroMag-mean() | numeric | Body Gyroscope Magnitude Mean |
| tBodyGyroMag-std() | numeric | Body Gyroscope Magnitude SD |

---
### Body Gyroscope Jerk Magnitude

| Column Name | Class | Description |
|:------------|:-----:|------------:|
| tBodyGyroJerkMag-mean() | numeric | Body Gyroscope Jerk Magnitude Mean |
| tBodyGyroJerkMag-std() | numeric | Body Gyroscope Jerk Magnitude SD |

---
### Body Acceleration Frequency

| Column Name | Class | Description |
|:------------|:-----:|------------:|
| fBodyAcc-mean()-X | numeric | Body Acceleration Frequency X Mean |
| fBodyAcc-mean()-Y | numeric | Body Acceleration Frequency Y Mean |
| fBodyAcc-mean()-Z | numeric | Body Acceleration Frequency Z Mean |
| fBodyAcc-std()-X | numeric | Body Acceleration Frequency X SD |
| fBodyAcc-std()-Y | numeric | Body Acceleration Frequency Y SD |
| fBodyAcc-std()-Z | numeric | Body Acceleration Frequency Z SD |
| fBodyAcc-meanFreq()-X | numeric | Body Acceleration Frequency X Weighted Mean |
| fBodyAcc-meanFreq()-Y | numeric | Body Acceleration Frequency Y Weighted Mean |
| fBodyAcc-meanFreq()-Z | numeric | Body Acceleration Frequency Z Weighted Mean |

---
### Body Acceleration Jerk Frequency

| Column Name | Class | Description |
|:------------|:-----:|------------:|
| fBodyAccJerk-mean()-X | numeric | Body Acceleration Jerk Frequency X Mean |
| fBodyAccJerk-mean()-Y | numeric | Body Acceleration Jerk Frequency Y Mean |
| fBodyAccJerk-mean()-Z | numeric | Body Acceleration Jerk Frequency Z Mean |
| fBodyAccJerk-std()-X | numeric | Body Acceleration Jerk Frequency X SD |
| fBodyAccJerk-std()-Y | numeric | Body Acceleration Jerk Frequency Y SD |
| fBodyAccJerk-std()-Z | numeric | Body Acceleration Jerk Frequency Z SD |
| fBodyAccJerk-meanFreq()-X | numeric | Body Acceleration Jerk Frequency X Weighted Mean |
| fBodyAccJerk-meanFreq()-Y | numeric | Body Acceleration Jerk Frequency Y Weighted Mean |
| fBodyAccJerk-meanFreq()-Z | numeric | Body Acceleration Jerk Frequency Z Weighted Mean |

---
### Body Gyroscope Frequency

| Column Name | Class | Description |
|:------------|:-----:|------------:|
| fBodyGyro-mean()-X | numeric | Body Gyroscope Frequency X Mean |
| fBodyGyro-mean()-Y | numeric | Body Gyroscope Frequency Y Mean |
| fBodyGyro-mean()-Z | numeric | Body Gyroscope Frequency Z Mean |
| fBodyGyro-std()-X | numeric | Body Gyroscope Frequency X SD |
| fBodyGyro-std()-Y | numeric | Body Gyroscope Frequency Y SD |
| fBodyGyro-std()-Z | numeric | Body Gyroscope Frequency Z SD |
| fBodyGyro-meanFreq()-X | numeric | Body Gyroscope Frequency X Weighted Mean |
| fBodyGyro-meanFreq()-Y | numeric | Body Gyroscope Frequency Y Weighted Mean |
| fBodyGyro-meanFreq()-Z | numeric | Body Gyroscope Frequency Z Weighted Mean |

---
### Body Acceleration Frequency Magnitude

| Column Name | Class | Description |
|:------------|:-----:|------------:|
| fBodyAccMag-mean() | numeric | Body Acceleration Frequency Magnitude Mean |
| fBodyAccMag-std() | numeric | Body Acceleration Frequency Magnitude SD |
| fBodyAccMag-meanFreq() | numeric | Body Acceleration Frequency Magnitude Weighted Mean |

---
### Body Acceleration Jerk Frequency Magnitude

| Column Name | Class | Description |
|:------------|:-----:|------------:|
| fBodyBodyAccJerkMag-mean() | numeric | Body Acceleration Jerk Frequency Magnitude Mean |
| fBodyBodyAccJerkMag-std() | numeric | Body Acceleration Jerk Frequency Magnitude SD |
| fBodyBodyAccJerkMag-meanFreq() | numeric | Body Acceleration Jerk Frequency Magnitude Weighted Mean |

---
### Body Gyroscope Frequency Magnitude

| Column Name | Class | Description |
|:------------|:-----:|------------:|
| fBodyBodyGyroMag-mean() | numeric | Body Gyroscope Frequency Magnitude Mean |
| fBodyBodyGyroMag-std() | numeric | Body Gyroscope Frequency Magnitude SD |
| fBodyBodyGyroMag-meanFreq() | numeric | Body Gyroscope Frequency Magnitude Weighted Mean |

---
### Body Gyroscope Jerk Frequency Magnitude

| Column Name | Class | Description |
|:------------|:-----:|------------:|
| fBodyBodyGyroJerkMag-mean() | numeric | Body Gyroscope Jerk Frequency Magnitude Mean |
| fBodyBodyGyroJerkMag-std() | numeric | Body Gyroscope Jerk Frequency Magnitude SD |
| fBodyBodyGyroJerkMag-meanFreq() | numeric | Body Gyroscope Jerk Frequency Magnitude Weighted Mean |