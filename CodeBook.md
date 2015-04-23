
DUE TO CHALLENGES WITH THE GITHUB EDITING< PLEASE FEEL FREE TO VIEW THIS DOCUMENT IN ITS "RAW" FORM.

---
title: Code book for Getting and Cleaning data - Course Project
author: RichCoursera
date: 4/20/15
output: tidydata.txt - space delimited
Code Book example taken from: "https://gist.github.com/JorisSchut/dbc1fc0402f28cad9b41"
---

## Project description
The project assignment was to take data from an experiment which had several data sets, follow several steps in manipulating the data sets into a cohesive dataset, and finally create a "tidy" data set.

##Collection of raw data
The data was extracted from a zip file located at: "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
The zip file contains data of an experiment which consisted of 30 subjects doing 6 different activities, and by using a mobile devices, capturing various data on the subjects movements.

##Additional note on the raw data.
The experiment captured activity attributes such as the bodies acceleration, the gravity acceleration, jerk motion, along with the linear acceleration and angular volicty. The raw data was broken into several data sets

##Cleaning the data
Though the experiment data sets were in several files, there was a distinct relationship between the files.  In order to determine how the data was to be put together, the files needed to be read into R, examine the data attributes (i.e. the dimensions of the data) and put the data together.
The "run_analysis.R" script will read in all of the needed data, bind the data into a meaningful structure, remove unnecessary columns of data (as stated by the assignment steps), assign column names, then create an average of the respective observations to create a tidy data set. 

##Creating the tidy data file
In order to run the "run_analysis.R" script you will need the following:
downloaded the needed files from: "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
and unzip the file which will create a structure of several folders and files.
Once the file structure is in place, you must set your working directory to the directory containing the "train" and "test" directories.
You will need to download the "run_analysis.R" and run it through R. At the completion of running the program, a file called, "tidydata.txt" will be created in your working directory.

## FINISH FROM HERE
##Descriptions of the variables in the tidy data set
General description of the file including:
  - Dimensions of the dataset
  - Summary of the data (below)
  - Variable present in the data set

###Variable 1 (repeat this section for all variables in the dataset)
Short description of what the variable describes.
 
Some information on the variable including:
 - Class of the variable
 - Unique values/levels of the variable
 - Unit of measurement (if no unit of measurement list this as well)
 - In case names follow some schema, describe how entries were constructed (for example time-body-gyroscope-z has 4 levels of descriptors. Describe these 4 levels). 
 
(you can easily use Rcode for this, just load the dataset and provide the information directly form the tidy data file)
 
####Notes on variable 1:
If available, some additional notes on the variable not covered elsewehere. If no notes are present leave this section out.
 
##Sources
Sources you used if any, otherise leave out.
 
##Annex
If you used any code in the codebook that had the echo=FALSE attribute post this here (make sure you set the results parameter to 'hide' as you do not want the results to show again)



Assumptions:
You have downloaded the needed files from: "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
You have also extracted the files from the downloaded zip file.
NOTE: Due to my knowledge of R programming (which is novice) some of the more simpler tasks (i.e. which data from the combined data set should be used to determine the average of the mean() and std() ) to determine which rows of data to use were done manually.  

The prerequisit for the assignment is as follows:
"You should create one R script called run_analysis.R that does the following"
You will find the R script in the same directory in which you found this codebook.

The first step of the process was to download the data locally.  This allowed me to be able to work on this effort while not neededing to be connected to the Internet.

The first step requested is:
"Merges the training and the test sets to create one data set"
Within the zip file there will be two folders labeled "train" and "test". In each folder (respectively) there are files labeled, "X_train.txt", "y_train.txt" (in the "train" folder), and"X_test.txt", "y_test.txt" (in the "test" folder)

I created columns for the Subject, Activity, and the various mean() and std() columns that contain the average of the Subject's activity for each mean() and std() columns.

I created columns for the Subject, Activity, and the various mean() and std() columns that contain the average of the Subject's activity.

```
Here is a sample of the tidy data set (first 3 columns and 10 rows) created by running the "run_analysis.R" code:
Sample of my tidy data set "tidydata.txt"

Subject Activity           Body acceleration on the x axis mean()
1       LAYING	            0.2215982
1       SITTING	            0.2612376
1       STANDING            0.2789176
1       WALKING             0.2773308
1       WALKING_DOWNSTAIRS  0.2891883
1       WALKING_UPSTAIRS    0.2554617
2       LAYING              0.2813734
2       SITTING             0.2770874
2       STANDING            0.2779115
2       WALKING             0.2764266

The core source of information about this data comes from the original experiment. I would highly recommend reading its README and CodeBook documents.

The measurements (e.g. "Body acceleration on the x axis mean...") are the value of OHOT?? - need to finish
Here are the column names and their description:
*Subject - This is the number of the person who did the related activities.  Their names were not given in the original data set.
*Activity - There were six (6) activities which were performed by each subject
*Body acceleration on the x,y,z axis mean() - is the mean of all of the observations collected relative to the subject and the activity performed.
*Body acceleration on the x,y,z axis std() - is the standard deviation of all of the observations collected relative to the subject and the activity performed.

***Pleae note that further information about this data is contained within the "features.txt" file located within the original downloaded dataset



Body acceleration on the x,y,z axis std() - 

```
