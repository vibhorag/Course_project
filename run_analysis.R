# The current script is aimed to ontain ,clean and analyze the UCI HAR dataset for the project
#in Getting and Cleaning data Course of Coursera.Scripts involve taking the data
#from the http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
# and transforming into tidy data set

#set the working directory
setwd("/Volumes/vibhor-sd/Cleaning _data_Coursera/Quizes/UCI HAR Dataset")
#check to see file exist or not
if(!file.exists("UCI_HAR_Dataset.zip")){
  fileURL = "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(fileURL,"UCI_HAR_Dataset.zip",mode = "wb")
  unzip("UCI_HAR_Dataset.zip")
  }
# Read Test data set  
X_test = read.table("test/X_test.txt")
#Read training data set
X_train = read.table("train/X_train.txt")
#read column names from feaures 
feature_table = read.table("features.txt")
#read activity text for the label
Activity_label = read.table("activity_labels.txt")

#Read Subject Activity 
Sub_test = read.table("test/subject_test.txt")
colnames(Sub_test) <- "Subject_Num"
Sub_train = read.table("train/subject_train.txt")
colnames(Sub_train) <- "Subject_Num"

#Read the label for test and train and rename the head by Activity Number
Y_train = read.table("train/y_train.txt")
Y_test = read.table("test/y_test.txt")
colnames(Y_test)<-"Activity_Number"

#To assign descriptive activity names to name the activities in the data set
#create a funtion to read the the Activity number and return Activity label helpul when the test label 
Rename_Label_function<-function(data_set_number){
  Activity_label = Activity_label$V2[Activity_label$V1==data_set_number]
  return(Activity_label)  
}

Y_test$Activity <-sapply(Y_test$Activity_Number,Rename_Label_function)
Y_train$Activity <-sapply(Y_train$Activity_Number,Rename_Label_function)

#labels the data set with descriptive variable names
colnames(X_test) <-feature_table$V2
colnames(X_train) <-feature_table$V2

#remove mean frequency first,then use the mean and std to create a tidy data set
X_test = X_test[,grep("meanFreq",colnames(X_test),perl = T,ignore.case=F,invert = T) ]
X_test = X_test[,grep("mean|std",colnames(X_test),perl = T,ignore.case = F)]
X_train = X_train[,grep("meanFreq",colnames(X_train),perl = T,ignore.case=F,invert = T) ]
X_train = X_train[,grep("mean|std",colnames(X_train),perl = T,ignore.case = F)]

#create a Tidy_train and test_data set 
Tidy_test_set = cbind(Sub_test,Y_test,X_test)
Tidy_train_set = cbind(Sub_train,Y_train,X_train)

# Combine the test and train tidy data set-Question 1
Combine_Train_Test_tidy = rbind(Tidy_train_set,Tidy_test_set)

#independent tidy data set with the average of each variable for each activity and each subject-Last part
Tidy_Data = aggregate(.~Subject_Num+Activity,Combine_Train_Test_tidy,FUN = mean)
write.table(Tidy_Data,"Tidy_dataset_UCIHAR.txt", sep = "\t",row.names = F,quote=F)
write.xlsx(x = Tidy_Data,file = "Tidy_dataset_UCIHAR.xlsx",sheetName = Tidy_Data,row.names = F)
















  
  

  
  
