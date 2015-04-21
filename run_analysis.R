##
##  Assignment Objective: To create a "tidy data" set from the
##                        downloaded data
## Course Project steps:
## You should create one R script called run_analysis.R that does the following. 
## 1.Merges the training and the test sets to create 
##   one data set.
## 2.Extracts only the measurements on the mean and 
##   standard deviation for each measurement. 
## 3.Uses descriptive activity names to name the 
##   activities in the data set
## 4.Appropriately labels the data set with 
##   descriptive variable names. 
## 5.From the data set in step 4, creates a second, 
##   independent tidy data set with the average of 
##   each variable for each activity and each subject.
##
##  Prereq.: Download the data zip file
message("You must have the data downloaded and unziped in your working directory")
message("The location of the data you need is: ")
message("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip")
message("Please reference the README.md and CodeBook.md document from where you retrieved this R code.")
##
## Logic to stop processing if the zip file was not extracted to your working directory 
if(!file.exists("./train") ||  !file.exists("./test")) {
  message("\n")
  message("You must have the downloaded zip file extracted and in your working directory.")
  message("I have stopped processing until this has been completed.")
  cat("Your current working directory is: \n", getwd())
#  stop("Error")
  }
##### Stopping the program if the needed files are not downloaded and extracted to the working directory
stopifnot(file.exists("./train") &&  file.exists("./test"))
##
## Continue Processing
##
cat("\n")
cat("Processing Step 1 - Merging data files.\n")
## Step 1. Merging data

## loading the needed libraries
library(data.table)
##
cat("\n")
cat("Please wait for the files to be loaded.\n")
## Reading the X.txt files
trainxtab<- read.table( "./train/X_train.txt", numerals = "no.loss" )
testxtab<- read.table( "./test/X_test.txt", numerals = "no.loss" )
##
## Reading the y.txt (labels) files
trainytab<- read.table( "./train/y_train.txt" )
testytab<- read.table( "./test/y_test.txt" )
##
## Reading the subject.txt (subject ID) files
subjecttraintab<- read.table( "./train/subject_train.txt" )
subjecttesttab<- read.table( "./test/subject_test.txt" )
##
##  Reading the 561 "features" variables
featurestab<- read.table( "./features.txt" )
##
cat("Data read - Merging files with rbind. \n")
## need to merge the "two"trtaining" and "test" files for X, y, and subject.
##  Combining the X data (X_train and X_test file data)
xtabbind<- rbind(trainxtab,testxtab )
##  Combining the y data (y+train and y_test file data)
ytabbind<- rbind(trainytab, testytab)
##  Combining the subject data (y+train and y_test file data)
subjecttabbind<- rbind(subjecttraintab, subjecttesttab)
##
##  At this point the X, y, and subject data sets (from train and test)
##  are combined, respectively
##
cat("\n")
cat("Processing Step 2 - Extracting the mean() and std() columns. \n")
## Step 2. Extracting the mean and standard deviation
##  need to find the columns that have the mean() and std() data.
##  need to get rid of other erronous data.
##
## extracting The columns of data with X,Y, and Z values for mean() and std()
extractxyz<- xtabbind[ ,c(1:6, 41:46, 81:86, 121:126, 161:166, 266:271, 345:350,424:429 )]
##
cat("\n")
cat("...Appending the Activity Number column to the begining of the \n")
cat("   extracted mean() and std() data. \n")
## Moving the "y" numbers (Activity number) to each row of "X" data
bindextractyandx<- cbind(ytabbind,extractxyz)
##
cat("\n")
cat("...Appending the Subject Number column to the begining of the \n")
cat("   extracted Activity, mean(), and std() data \n")
## Moving the subject ID to each row of "X" data
bindextractyxsubject<- cbind(subjecttabbind,bindextractyandx)
## Now have the data associated to the Activity
##
##
cat("\n")
cat("Processing Step 3 - Renaming the Activity Numbers to the Activity Names.\n")
## Step 3.Using descriptive names
##  Giving descriptive names to the Actions
## Reading the table of Action definitions
activitytab<- read.table( "./activity_labels.txt")
##
## Giving the first column a name for the setting of the Activity Name.
names(bindextractyxsubject)[2]<- "Activity"
##  takes the Activity name and associate them to the Activity code added from above
bindextractyxsubject$Activity[which(bindextractyxsubject$Activity == activitytab$V1[bindextractyxsubject$Activity])] <- as.character(activitytab$V2[bindextractyxsubject$Activity])
##
##
cat("\n")
cat("Processing Step 4 - Labeling the column (V1, V2, etc.) for the final output.\n")
## Step 4.label the data set with better names than 
## V1, V2, etc. 
## Descriptive names go into the CodeBook
##  Loading up the column names for the final output
#
#  YES, this is ugly - With more time, I would have done this better. :)
#
colnames<- c("Subject","Activity","Body acceleration on the x axis mean()",
"Body acceleration on the y axis mean()","Body acceleration on the z axis mean()",
"Body acceleration on the x axis std()","Body acceleration on the y axis std()",
"Body acceleration on the z axis std()","Gravity acceleration on the x axis mean()",
"Gravity acceleration on the y axis mean()","Gravity acceleration on the z axis mean()",
"Gravity acceleration on the x axis std()","Gravity acceleration on the y axis std()",
"Gravity acceleration on the z axis std()","Jerk of the body on the x axis mean()",
"Jerk of the body on the y axis mean()","Jerk of the body on the z axis mean()",
"Jerk of the body on the x axis std()","Jerk of the body on the y axis std()",
"Jerk of the body on the z axis std()","Body angular volecity on the x axis mean()",
"Body angular volecity on the y axis mean()","Body angular volecity on the z axis mean()",
"Body angular volecity on the x axis std()","Body angular volecity on the y axis std()",
"Body angular volecity on the z axis std()","Angular volecity jerk of the body on the x axis mean()",
"Angular volecity jerk of the body on the y axis mean()","Angular volecity jerk of the body on the z axis mean()",
"Angular volecity jerk of the body on the x axis std()","Angular volecity jerk of the body on the y axis std()",
"Angular volecity jerk of the body on the z axis std()","Frequency domain on the body acceleration on the x axis mean()",
"Frequency domain on the body acceleration on the y axis mean()","Frequency domain on the body acceleration on the z axis mean()",
"Frequency domain on the body acceleration on the x axis std()","Frequency domain on the body acceleration on the y axis std()",
"Frequency domain on the body acceleration on the z axis std()","Frequency domain of the angular volecity jerk of the body on the x axis mean()",
"Frequency domain of the angular volecity jerk of the body on the y axis mean()","Frequency domain of the angular volecity jerk of the body on the z axis mean()",
"Frequency domain of the angular volecity jerk of the body on the x axis std()","Frequency domain of the angular volecity jerk of the body on the y axis std()",
"Frequency domain of the angular volecity jerk of the body on the z axis std()","Frequency domain of the body angular volecity on the x axis mean()",
"Frequency domain of the body angular volecity on the y axis mean()","Frequency domain of the body angular volecity on the z axis mean()",
"Frequency domain of the body angular volecity on the x axis std()","Frequency domain of the body angular volecity on the y axis std()",
"Frequency domain of the body angular volecity on the z axis std()" )
#
##  Setting the column names
names(bindextractyxsubject) <- colnames
##
cat("Sample data set processed from step 4.\n")
print(bindextractyxsubject[1:10,1:3])
cat("\n")
##
cat("Processing Step 5 - Creating a tidy data file with the average of \n")
cat("                    each variable for each activity and each subject.\n")
cat("\n")
## Step 5. This is the data set to uplod into GitHub
##     This step is to create the mean() and std() of the x, y, and z 
##    values for each set of mean() and std() data.
library(reshape2)
##  Need to reshape the data to get the AVG. of the rows for each column
##  by Activity
##
Xdatamelt<- melt(bindextractyxsubject, id=c("Subject", "Activity") )
##### #####
##
Activitydata<- dcast(Xdatamelt, Subject + Activity ~ variable, mean) 
##
cat("Sample of tidy data set \n")
print(Activitydata[1:10, 1:3])
##
##  writing the tidy data file
write.table(Activitydata, file = "tidydata.txt", sep = " ", row.name=FALSE)
message("To see the full tidy dataset, a file called 'tidydata.txt' has been written to your working directory")
##
