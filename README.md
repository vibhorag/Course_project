
# Course_project
Cleaning Data-Coursera

## Obtaining the data 
Data was obtained from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
the data was obtained.The data obtained represent data collected from the accelerometers from the Samsung Galaxy S smartphone
for more information http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.
Raw data was obtained as zip file.
I have stored it locally in the /Volumes/vibhor-sd/Cleaning _data_Coursera/Quizes/UCI HAR Dataset
Download the zip file --> unzip it --> and set to your local directory if you want to run the script

## Reading the data test and training data 
 Script wil read the test and trainign data

## Reading the Subject,Activity and Features

Script reads the Subject information and the subject who performed the activity for each window sample. Its range is from 1 to 30.
features corresponds to the column names of the each test/train data
Activitylabel- corresponds to Activity of each Label

## Function is also created to correspond to each Activirty description by the Activity number


## Limit the Test/training data to mean and std dev,

The project requires to be intrested only in 66 of all 561 measuremnt and their std and mean.The mean and std of variable descriped in the Codebook.md were only selected

## Combine test Set with Subject_Number,Activity_label and the data set with appropriate coloumn names

## Combine training  Set with Subject_Number,Activity_label and the data set with appropriate coloumn names

##Combine test and training dataset
Single data frame is created with the test and training dataset.The data frame was further used to further create a data set which sumarizzes the mean for each of 66 desired measurment across subject Number as well as for activity.Final file written has header with 68 coloumns and 180 rows. 
  
