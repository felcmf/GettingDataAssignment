# GettingDataAssignment

# The source data files are attributable to Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

# Source Data Files
# 'X_train.txt': Training Dataset 
# 'X_test.txt': Test Dataset
# 'y_train.txt': Activity Labels for Training Dataset
# 'y_test.txt': Activity Lables for Test Dataset
# 'subject_train.txt': Subject Labels for Training Dataset
# 'subject_test.txt': Subject Labels for Test Dataset

# Scripts
# 'run_Analysis.R': R script which does the following:
# 1. Read the 6 source data files
# 2. Merge the subject labels, activity labels and training data to 1 dataset. Repeat for test data. 
# 3. Merge the training and test sets to create one dataset.
# 4. Add descriptive variable names as headers to the variables.  
# 5. Extracts only the measurements on the mean and standard deviation for each measurement by filtering for "mean()" and "std()" in variable names. 
# 6. Replace code labels in Activity Columnn with the descriptive activity names.
# 7. Replace short forms in headers with long forms.
# 8. For each individual and each activity, compute column means and add to output dataset.

# Code Book
# 'CodeBook.md': Describes the variables in the output file. 

# Output Data Files
# 'cleandata.txt': New dataset with the mean for each variable for each activity and each subject
