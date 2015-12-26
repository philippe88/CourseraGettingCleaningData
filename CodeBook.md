# CodeBook

[Datasource] (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

## Input
Execute run_analysis.R from a directory containing the extracted data. 
Below files are required in the working directory:

- features.txt
- activity_labels.txt
- Training set
 - train/X_train.txt
 - train/subject_train.txt
 - train/y_train.txt
- Test set
 - test/X_test.txt
 - test/subject_test.txt
 - test/y_test.txt

## Output
- tidyset.txt: average of the means and standard deviations for each subject in each activity

## Processing performed
- merge of the training and test datasets
- extraction of only the mean and standard deviation data
- combine activity and test subject information into a final 'alldata' data frame.
- use 'alldata' to generate tidyset.txt

## Measurements in tidyset
68 measurements were averaged in this tidy set, each is normalized and bounded within [-1,1] in the original dataset

- subject: individual performing the activity
- activity: string describing one of the 6 activities performed

## How to interpret the feature names
- subject: individual performing the activity
- activity: string describing one of the 6 activities performed
- Variables starting with 't' are time domain measures
- Variables starting with 'f' are frequency domain measures (Fast Fourier Transform of time measures)
- Variable ending in 'xyz' indicate the 3-axial X,Y.Z direction being measured
- 'mean' denotes the mean of the measure for each subject + activity
- 'meanstd' denotes the mean of the standard deviation of the measure
- 'mag' denotes the magnitude of (Euclidian norm from xyz values)
- Other variable differentiators are
 - bodyacc: body acceleration 
 - gravityacc: gravity acceleration
 - bodyaccjerk: body jerk
 - bodygyro: body gyroscope value
 - bodygyrojerk: body gyroscope jerk

## Full list of measures
- tbodyaccmeanx
- tbodyaccmeany
- tbodyaccmeanz
- tbodyaccmeanstdx
- tbodyaccmeanstdy
- tbodyaccmeanstdz
- tgravityaccmeanx
- tgravityaccmeany
- tgravityaccmeanz
- tgravityaccmeanstdx
- tgravityaccmeanstdy
- tgravityaccmeanstdz
- tbodyaccjerkmeanx
- tbodyaccjerkmeany
- tbodyaccjerkmeanz
- tbodyaccjerkmeanstdx
- tbodyaccjerkmeanstdy
- tbodyaccjerkmeanstdz
- tbodygyromeanx
- tbodygyromeany
- tbodygyromeanz
- tbodygyromeanstdx
- tbodygyromeanstdy
- tbodygyromeanstdz
- tbodygyrojerkmeanx
- tbodygyrojerkmeany
- tbodygyrojerkmeanz
- tbodygyrojerkmeanstdx
- tbodygyrojerkmeanstdy
- tbodygyrojerkmeanstdz
- tbodyaccmagmean
- tbodyaccmagmeanstd
- tgravityaccmagmean
- tgravityaccmagmeanstd
- tbodyaccjerkmagmean
- tbodyaccjerkmagmeanstd
- tbodygyromagmean
- tbodygyromagmeanstd
- tbodygyrojerkmagmean
- tbodygyrojerkmagmeanstd
- fbodyaccmeanx
- fbodyaccmeany
- fbodyaccmeanz
- fbodyaccmeanstdx
- fbodyaccmeanstdy
- fbodyaccmeanstdz
- fbodyaccjerkmeanx
- fbodyaccjerkmeany
- fbodyaccjerkmeanz
- fbodyaccjerkmeanstdx
- fbodyaccjerkmeanstdy
- fbodyaccjerkmeanstdz
- fbodygyromeanx
- fbodygyromeany
- fbodygyromeanz
- fbodygyromeanstdx
- fbodygyromeanstdy
- fbodygyromeanstdz
- fbodyaccmagmean
- fbodyaccmagmeanstd
- fbodybodyaccjerkmagmean
- fbodybodyaccjerkmagmeanstd
- fbodybodygyromagmean
- fbodybodygyromagmeanstd
- fbodybodygyrojerkmagmean
- fbodybodygyrojerkmagmeanstd
