CodeBook
================

Introduction
------------

The run\_analysis.R script is based on the data downloaded from: <https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip> and processes the data in line with the 5-step project instruction:

-   Firstly, all the required data is read in and respective test and training data sets are merged by rbind function. Then, they are labelled and merged in a final data set by cbind function. The rows record measurements for activity/subject pairs (1. and 2. column). All the measurements' column names are derived from "features.txt" file.
-   Secondly, measurement columns with "mean" or "std" in their names are extracted.
-   Thirdly, "Activity" variable is turned into factor and activity names from the "activity\_labels" data set are used as the factor labels.
-   Fourthly, the column names in the data set are turned into more descriptive, i.e. "t" is changed into "time" and "f" into "freq".
-   Finally, a new tidy data set is created with averages of all the measurement variables grouped by the activity and subject variables, i.e. 180 unique pairs (rows) (6 activities times 30 subjects).

Subject & Activity
------------------

Subject and Activity variables make 180 unique pairs that measurement variables relate to:

-   Subject: one of 30 consecutive subject IDs, integer
-   Activity: one of 6 activities during which the respective measurements were recorded, factor

Measurements
------------

All measurement variables are the mean of the corresponding mean or standard deviation measurements for each unique Subject/Activity pair (numeric variables):

-   TimeBodyAccelerometerMeanX
-   TimeBodyAccelerometerMeanY
-   TimeBodyAccelerometerMeanZ
-   TimeBodyAccelerometerStdX
-   TimeBodyAccelerometerStdY
-   TimeBodyAccelerometerStdZ
-   TimeGravityAccelerometerMeanX
-   TimeGravityAccelerometerMeanY
-   TimeGravityAccelerometerMeanZ
-   TimeGravityAccelerometerStdX
-   TimeGravityAccelerometerStdY
-   TimeGravityAccelerometerStdZ
-   TimeBodyAccelerometerJerkMeanX
-   TimeBodyAccelerometerJerkMeanY
-   TimeBodyAccelerometerJerkMeanZ
-   TimeBodyAccelerometerJerkStdX
-   TimeBodyAccelerometerJerkStdY
-   TimeBodyAccelerometerJerkStdZ
-   TimeBodyGyroscopeMeanX
-   TimeBodyGyroscopeMeanY
-   TimeBodyGyroscopeMeanZ
-   TimeBodyGyroscopeStdX
-   TimeBodyGyroscopeStdY
-   TimeBodyGyroscopeStdZ
-   TimeBodyGyroscopeJerkMeanX
-   TimeBodyGyroscopeJerkMeanY
-   TimeBodyGyroscopeJerkMeanZ
-   TimeBodyGyroscopeJerkStdX
-   TimeBodyGyroscopeJerkStdY
-   TimeBodyGyroscopeJerkStdZ
-   TimeBodyAccelerometerMagMean
-   TimeBodyAccelerometerMagStd
-   TimeGravityAccelerometerMagMean
-   TimeGravityAccelerometerMagStd
-   TimeBodyAccelerometerJerkMagMean
-   TimeBodyAccelerometerJerkMagStd
-   TimeBodyGyroscopeMagMean
-   TimeBodyGyroscopeMagStd
-   TimeBodyGyroscopeJerkMagMean
-   TimeBodyGyroscopeJerkMagStd
-   FreqBodyAccelerometerMeanX
-   FreqBodyAccelerometerMeanY
-   FreqBodyAccelerometerMeanZ
-   FreqBodyAccelerometerStdX
-   FreqBodyAccelerometerStdY
-   FreqBodyAccelerometerStdZ
-   FreqBodyAccelerometerJerkMeanX
-   FreqBodyAccelerometerJerkMeanY
-   FreqBodyAccelerometerJerkMeanZ
-   FreqBodyAccelerometerJerkStdX
-   FreqBodyAccelerometerJerkStdY
-   FreqBodyAccelerometerJerkStdZ
-   FreqBodyGyroscopeMeanX
-   FreqBodyGyroscopeMeanY
-   FreqBodyGyroscopeMeanZ
-   FreqBodyGyroscopeStdX
-   FreqBodyGyroscopeStdY
-   FreqBodyGyroscopeStdZ
-   FreqBodyAccelerometerMagMean
-   FreqBodyAccelerometerMagStd
-   FreqBodyAccelerometerJerkMagMean
-   FreqBodyAccelerometerJerkMagStd
-   FreqBodyGyroscopeMagMean
-   FreqBodyGyroscopeMagStd
-   FreqBodyGyroscopeJerkMagMean
-   FreqBodyGyroscopeJerkMagStd
