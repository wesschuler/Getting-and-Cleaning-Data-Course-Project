# Project Code Book

1. Load neccessary libraries for code to function properly
2. Set working directory and unzip data package
3. Read in test and train data from data package
4. Read in features and activity_labels from data package
5. Merge train and test data into comprehensive dataset
6. Fetch and subset only variables from features containing mean and standard deviation measurements
7. Replace numeric values from feature with desciptions from activity_labels.txt
8. Update column headers with descriptive variable names
9. Create Tidy.txt data set with subjects, activities, means, and standard deviations for each subject and activity pair
