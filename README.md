# CourseraGettingCleaningData

## Usage
run_analysis.R needs to be placed with the extacted zip archive of the Smartphone sensor data and can be run without any parameter and will produce a summary file of the measurements for each subject.


## Input
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
- See the Cookbook for a description of the measurements


## Processing performed
- merge of the training and test datasets 
- extraction of only the mean and standard deviation data
- combine activity and test subject information into a final 'alldata' data frame.
- use 'alldata' to generate tidyset.txt
