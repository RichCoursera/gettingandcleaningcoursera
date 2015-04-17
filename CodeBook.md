# Code book for Getting and Cleaning data - Course Project
This codebook is to discribe the steps being taken to complete the "Getting and Cleaning data" course
A little information about the data
This project will be working with the data sets from the "Human Activity Recognition Using Smartphones Dataset
Version 1.0"

Assumptions:
You have downloaded the needed files from: "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
You have also extracted the files from the downloaded zip file.
NOTE: Due to my knowledge of R programming (which is novice) some of the more simpler tasks (i.e. which data from the combined data set should be used to determine the average of the mean() and std() ) to determine which rows of data to use were done manually.  

The prerequisit for the assignment is as follows:
"You should create one R script called run_analysis.R that does the following"
You will find the R script in the same directory in which you found this codebook.

The first step of the process was to download the data locally.  This allowed me to be able to work on this effort while not neededing to be connected to the Internet.

The first requested is:
"Merges the training and the test sets to create one data set"
Within the zip file there will be two folders labeled "train" and "test". In each folder (respectively) there are files labeled, "X_train.txt", "y_train.txt" (in the "train" folder), and"X_test.txt", "y_test.txt" (in the "test" folder)


