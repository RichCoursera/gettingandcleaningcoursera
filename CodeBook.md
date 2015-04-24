---

title: Code book for Getting and Cleaning data - Course Project
author: RichCoursera
date: 4/20/15
output: tidydata.txt - space delimited

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

##Descriptions of the variables from the raw data and in the tidy data set
###raw data information:
As the data created in the tidy data set came from the original source, I thought it important to include the description of the "features.txt" file within this document.
This comes directly from the "features.txt" document:
"The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
"
###tiday data information:
The tiday data set created contains the average of the mean and standard deviation measures for each subject in each activity. The data set produces a 180 x 50 dimensional data set. 
General description of the file including:

##Summary of the tidy data
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
```

###Column 1 (Subject)
Subject - This is the ID of the subject who performed the related activities.  It is an integer value.  There were 30 subjects performing the activities.

###Column 2 (Activity)
Activity - Six (6) activities were preformed by each subject several times. The activities consisted of: Walking, Walking Upstairs, Walking Downstairs, Sitting, Standing, and Laying.

### Remaining Column Variables Description
The remaining variables contains the data relative to the subject and activity performed, and can be broken down by the following:

mean() and std() - This is the mean and standard deviation of the accumulative information for the specific activity per subject.

x axis, y axis, and z axis - this is used to denote the signals from the X, Y, and Z direction of the measurement.

Body and Gravity acceleration - The subjects body acceleration captured from the devices accelerometer, and separated into body and gravity acceleration signals.

Jerk - The subjects jerking motion was also captured by capturing the bodies linear acceleration and angular velocity signals.

Frequency domain - The Fast Fourier Transform (FFT) were applied to several of the signals

###Variable Names (pertaining to the Variable Descriptions above)
### 
######Body acceleration on the x axis mean()
######Body acceleration on the y axis mean()
######Body acceleration on the z axis mean()
######Body acceleration on the x axis std()
######Body acceleration on the y axis std()
######Body acceleration on the z axis std()
###
######Gravity acceleration on the x axis mean()
######Gravity acceleration on the y axis mean()
######Gravity acceleration on the z axis mean()
######Gravity acceleration on the x axis std()
######Gravity acceleration on the y axis std()
######Gravity acceleration on the z axis std()
###
######Jerk of the body on the x axis mean()
######Jerk of the body on the y axis mean()
######Jerk of the body on the z axis mean()
######Jerk of the body on the x axis std()
######Jerk of the body on the y axis std()
######Jerk of the body on the z axis std()
###
######Body angular velocity on the x axis mean()
######Body angular velocity on the y axis mean()
######Body angular velocity on the z axis mean()
######Body angular velocity on the x axis std()
######Body angular velocity on the y axis std()
######Body angular velocity on the z axis std()
###
######Angular velocity jerk of the body on the x axis mean()
######Angular velocity jerk of the body on the y axis mean()
######Angular velocity jerk of the body on the z axis mean()
######Angular velocity jerk of the body on the x axis std()
######Angular velocity jerk of the body on the y axis std()
######Angular velocity jerk of the body on the z axis std()
###
######Frequency domain on the body acceleration on the x axis mean()
######Frequency domain on the body acceleration on the y axis mean()
######Frequency domain on the body acceleration on the z axis mean()
######Frequency domain on the body acceleration on the x axis std()
######Frequency domain on the body acceleration on the y axis std()
######Frequency domain on the body acceleration on the z axis std()
###
######Frequency domain of the angular velocity jerk of the body on the x axis mean()
######Frequency domain of the angular velocity jerk of the body on the y axis mean()
######Frequency domain of the angular velocity jerk of the body on the z axis mean()
######Frequency domain of the angular velocity jerk of the body on the x axis std()
######Frequency domain of the angular velocity jerk of the body on the y axis std()
######Frequency domain of the angular velocity jerk of the body on the z axis std()
###
######Frequency domain of the body angular velocity on the x axis mean()
######Frequency domain of the body angular velocity on the y axis mean()
######Frequency domain of the body angular velocity on the z axis mean()
######Frequency domain of the body angular velocity on the x axis std()
######Frequency domain of the body angular velocity on the y axis std()
######Frequency domain of the body angular velocity on the z axis std()

##Sources
1. "features.txt" from the zip file of the raw data. - "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
2. For the code book template - "https://gist.github.com/JorisSchut/dbc1fc0402f28cad9b41"

***Pleae note that further information about this data is contained within the "features.txt" file located within the original downloaded dataset
```
