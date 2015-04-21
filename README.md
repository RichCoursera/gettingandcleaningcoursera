# gettingandcleaningcoursera - Course Project
Repository for the Getting and Cleaning Data course - Course Project

====================================================
Coursera Course Project - Getting and Cleaning Data
====================================================
The course project consists of following five (5) steps, they are:
  1. Merges the training and the test sets to create one data set.
  2. Extracts only the measurements on the mean and standard deviation for each measurement. 
  3. Uses descriptive activity names to name the activities in the data set
  4. Appropriately labels the data set with descriptive variable names. 
  5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
The interpretation of these steps is dictated by the person generating the results.

The end result is to produce 2 types of files.  The first file (conclusion of Step 4) is the merging of several data files, to produce a "grid-like" representation of the data, with only the mean() and std() values. The file will include column labels and conversion of the Activity Number (see code book for more information). The second file is to produce "tidy data" from the first file by creating an average of all of the observations for the mean() and std() columns.

The end resulting data created for this project (from step 5) is a tidt data set, showing the X, Y, and Z  mean and standard deviation average values collected from the original experiment.

This project consists of the following:
 - The file downloaded from the following URL: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
 - And the downloaded file unzipped in your working directory
 - The unzipped file will product a directory containg two sub-directories called "training" and "test".
 - The two sub-directories will contain three (3) files containing the data needed to run the associated "run_analysis.R" script.
 - The files are .txt files with the following names:
    - subject_train or subject_test which contains the Subject ID number (An ID to the person going through the experiment.)
    - y_train or y_test which contains the activity number performed for each reading
    - X_train or X_test whcih contains the various data points (e.g. mean() and std() ) for each activity and subject
 - There are also two files loaded in the main directory (same location as the "train" and "test" directories.)
    - The files are: activity_labels.txt and features.txt - These files have the name of the Activity (associated by Activity ID), and the column headings for the data in the original expierment.

Please review the "README" file associated to the experiement which is located in the main directory of the extracted zip file.

Running the R program:

To product the data for this course project, you will need to download the zip file and extract it, and download the "run_anlysis.R" program.
The program will produce a "tidy" data set file (tidydata.txt) in your working directory.

====================================================
Origins for the project
====================================================
The data for this effort, and information about the experiment comes from the following location:
"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
This zip file must be downloaded, and unzipped, in order to run the run_analysis.R program.

The original data comes from an experiment called: "Human Activity Recognition Using Smartphone Dataset"
For more details on the experiment and the original dataset, pleasse read the "README.txt" and "features_info.txt" files located in the forementioned zip file. 
  
