# Project Code Book

1. Load neccessary libraries for code to function properly
2. Set working directory and unzip data package
3. Read in test and train data from data package
4. Create X_test, y_test, sub_test, X_train, y_train, and subject_train variales from tabular data
5. Read in features and activity_labels from data package
6. Create features and activity_labels from tabular data 
7. Merge train and test data into comprehensive dataset
8. Create X, y and subject variable by binding test and train variable from step 4, above
9. Fetch and subset only variables from features containing mean and standard deviation measurements
10. Create index from the subset of features containing only mean and standard deviation measurements
11. Mutate X as a function of index
12. Replace numeric values from feature with desciptions from activity_labels.txt
13. Mutate y as a function of activity_labels, names as a function of features and index, and names as a factor of X
15. Update column headers with descriptive variable names
16. Apply the text "Subject" to names and "Activity" to y
17. Create cleaned_data variable by binding subject, y, and X
18. Create Tidy.txt data set with subjects, activities, means, and standard deviations for each subject and activity pair
19. Mutate cleaned_data into a data table
20. Create tidy_data as a function of cleaned_data with labels created in 16 above
21. Write the tady_data table as a text file named Tidy.txt
22. Test various measureables within code with test_run_analysis.R code
