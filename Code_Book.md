
## Variables

* Subject .- Subject Number, ranges from 1 to 30
* Activity.- Name of the measured activity, 6 possible values:


Activity_Code|Activity
| ----------- |:-----------:|
1|WALKING
2|WALKING_UPSTAIRS
3|WALKING_DOWNSTAIRS
4|SITTING
5|STANDING
6|LAYING

  
* variable.- This variable describes the type of measurement with a suffix that indicates the type of  statistic (".mean", ".std")  For a full description of the measurements we refer to features_info.txt in the "UCI HAR Dataset" directory.


* value.- This is the mean grouped by Subject and Activity of each of the normalized statistics of the different measurements. 

We renamed the variables to make them R compliant, at the end of this document there is a map of the tidy_summary name and the original name for each measurement.


## Relation between the names in "tidy_summary.txt" and  "feature_info.txt"

tidy_summary_name|original_name
| ----------- |:-----------:|
tBodyAcc.mean.X|tBodyAcc-mean()-X
tBodyAcc.mean.Y|tBodyAcc-mean()-Y
tBodyAcc.mean.Z|tBodyAcc-mean()-Z
tBodyAcc.std.X|tBodyAcc-std()-X
tBodyAcc.std.Y|tBodyAcc-std()-Y
tBodyAcc.std.Z|tBodyAcc-std()-Z
tGravityAcc.mean.X|tGravityAcc-mean()-X
tGravityAcc.mean.Y|tGravityAcc-mean()-Y
tGravityAcc.mean.Z|tGravityAcc-mean()-Z
tGravityAcc.std.X|tGravityAcc-std()-X
tGravityAcc.std.Y|tGravityAcc-std()-Y
tGravityAcc.std.Z|tGravityAcc-std()-Z
tBodyAccJerk.mean.X|tBodyAccJerk-mean()-X
tBodyAccJerk.mean.Y|tBodyAccJerk-mean()-Y
tBodyAccJerk.mean.Z|tBodyAccJerk-mean()-Z
tBodyAccJerk.std.X|tBodyAccJerk-std()-X
tBodyAccJerk.std.Y|tBodyAccJerk-std()-Y
tBodyAccJerk.std.Z|tBodyAccJerk-std()-Z
tBodyGyro.mean.X|tBodyGyro-mean()-X
tBodyGyro.mean.Y|tBodyGyro-mean()-Y
tBodyGyro.mean.Z|tBodyGyro-mean()-Z
tBodyGyro.std.X|tBodyGyro-std()-X
tBodyGyro.std.Y|tBodyGyro-std()-Y
tBodyGyro.std.Z|tBodyGyro-std()-Z
tBodyGyroJerk.mean.X|tBodyGyroJerk-mean()-X
tBodyGyroJerk.mean.Y|tBodyGyroJerk-mean()-Y
tBodyGyroJerk.mean.Z|tBodyGyroJerk-mean()-Z
tBodyGyroJerk.std.X|tBodyGyroJerk-std()-X
tBodyGyroJerk.std.Y|tBodyGyroJerk-std()-Y
tBodyGyroJerk.std.Z|tBodyGyroJerk-std()-Z
tBodyAccMag.mean|tBodyAccMag-mean()
tBodyAccMag.std|tBodyAccMag-std()
tGravityAccMag.mean|tGravityAccMag-mean()
tGravityAccMag.std|tGravityAccMag-std()
tBodyAccJerkMag.mean|tBodyAccJerkMag-mean()
tBodyAccJerkMag.std|tBodyAccJerkMag-std()
tBodyGyroMag.mean|tBodyGyroMag-mean()
tBodyGyroMag.std|tBodyGyroMag-std()
tBodyGyroJerkMag.mean|tBodyGyroJerkMag-mean()
tBodyGyroJerkMag.std|tBodyGyroJerkMag-std()
fBodyAcc.mean.X|fBodyAcc-mean()-X
fBodyAcc.mean.Y|fBodyAcc-mean()-Y
fBodyAcc.mean.Z|fBodyAcc-mean()-Z
fBodyAcc.std.X|fBodyAcc-std()-X
fBodyAcc.std.Y|fBodyAcc-std()-Y
fBodyAcc.std.Z|fBodyAcc-std()-Z
fBodyAccJerk.mean.X|fBodyAccJerk-mean()-X
fBodyAccJerk.mean.Y|fBodyAccJerk-mean()-Y
fBodyAccJerk.mean.Z|fBodyAccJerk-mean()-Z
fBodyAccJerk.std.X|fBodyAccJerk-std()-X
fBodyAccJerk.std.Y|fBodyAccJerk-std()-Y
fBodyAccJerk.std.Z|fBodyAccJerk-std()-Z
fBodyGyro.mean.X|fBodyGyro-mean()-X
fBodyGyro.mean.Y|fBodyGyro-mean()-Y
fBodyGyro.mean.Z|fBodyGyro-mean()-Z
fBodyGyro.std.X|fBodyGyro-std()-X
fBodyGyro.std.Y|fBodyGyro-std()-Y
fBodyGyro.std.Z|fBodyGyro-std()-Z
fBodyAccMag.mean|fBodyAccMag-mean()
fBodyAccMag.std|fBodyAccMag-std()
fBodyBodyAccJerkMag.mean|fBodyBodyAccJerkMag-mean()
fBodyBodyAccJerkMag.std|fBodyBodyAccJerkMag-std()
fBodyBodyGyroMag.mean|fBodyBodyGyroMag-mean()
fBodyBodyGyroMag.std|fBodyBodyGyroMag-std()
fBodyBodyGyroJerkMag.mean|fBodyBodyGyroJerkMag-mean()
fBodyBodyGyroJerkMag.std|fBodyBodyGyroJerkMag-std()