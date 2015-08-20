#Getting and Cleaning Data Project
#Data obtained from: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#
#__________________________________________________________________________________________________
##Setting your working directory:
#Set your working directory to the base directory that contains the "UCI HAR Dataset". So if your data 
#is stored as such: "BaseDirectory\UCI HAR Dataset\..." set your working directory as "BaseDirectory"
#_________________________________________________________________________________________________
#Load libraries
library(dplyr)

##Loading General data
#_________________________________________________________________________________________________
#Read the activity name with the corresponding activity number (from 1-6) into genActivityLabel
genActivityLabel <- read.table("UCI HAR Dataset//activity_labels.txt",col.names = c("activityNr","activityName"))

#Read the number with the corresponding names of the time and frequency domain 
#variables into genFeatures (from 1 - 561)
genFeatures<- read.table("UCI HAR Dataset//features.txt")


##Loading Test Data
#_________________________________________________________________________________________________

#Read the test data from "X_test.txt" into a variable called testData
testData <- read.table("UCI HAR Dataset//test//X_test.txt")

#Read the activities (from 1-6) into testActivities
testActivities <- read.table("UCI HAR Dataset//test//Y_test.txt",colClasses = "factor")

#Read the Subjects who performed the activity into testSubject. There will be 9 test subjects
#in this set as the 30% of the 30 subjects were assigned to the test set. The subjects will
#be read in in a dataframe with 1 column of type factor
testSubject <- read.table("UCI HAR Dataset//test//subject_test.txt",colClasses = "factor")

#Cleaning test data
#_________________________________________________________________________________________________
#Assign the time and frequency labels from genFeatures to testData
names(testData)<- genFeatures[,2]
names(testSubject)<-"Subject"
names(testActivities)<-"activityNr"
#Create a dataframe with the same length as testSubject. This will be added to the dataframe so that
#test data can be distinguished from training data if needed
dataSourceTest<- data.frame("dataSource"=rep("test",dim(testSubject)[1]))
testData<-cbind(dataSourceTest$dataSource,testData)
names(testData)[1]="dataSource"
#Add the activity to the dataframe and rename this column in the dataframe
testData<-cbind(testActivities$activityNr,testData)
names(testData)[1]="activityNr"
#Add the subject to the testData dataframe at the begining of the dataframe
testData<-cbind(testSubject$Subject,testData)
#rename the column name from "testSubject$subject" to "subject"
names(testData)[1]="subject"

##Loading Train Data
#_________________________________________________________________________________________________

#Read the training data from "X_train.txt" into a variable called trainData
trainData <- read.table("UCI HAR Dataset//train//X_train.txt")

#Read the activities (from 1-6) into trainActivities
trainActivities <- read.table("UCI HAR Dataset//train//Y_train.txt",colClasses = "factor")

#Read the Subjects who performed the activity into trainSubject. There will be 21 training subjects
#in this set as the 70% of the 30 subjects were assigned to the train set. The subjects will
#be read in in a dataframe with 1 column of type factor
trainSubject <- read.table("UCI HAR Dataset//train//subject_train.txt",colClasses = "factor")

#Cleaning train data
#_________________________________________________________________________________________________
#Assign the time and frequency labels from genFeatures to trainData
names(trainData)<- genFeatures[,2]
names(trainSubject)<-"Subject"
names(trainActivities)<-"activityNr"
#Create a dataframe with the same length as trainSubject. This will be added to the dataframe so that
#test data can be distinguished from training data if needed
dataSourceTrain<- data.frame("dataSource"=rep("train",dim(trainSubject)[1]))
trainData<-cbind(dataSourceTrain$dataSource,trainData)
names(trainData)[1]="dataSource"
#Add the activity to the dataframe and rename this column in the dataframe
trainData<-cbind(trainActivities$activityNr,trainData)
names(trainData)[1]="activityNr"
#Add the subject to the trainData dataframe at the begining of the dataframe
trainData<-cbind(trainSubject$Subject,trainData)
#rename the column name from "trainSubject$subject" to "subject"
names(trainData)[1]="subject"
#_________________________________________________________________________________________________
#Combine the data into one dataframe called allData.
allData<-rbind(testData,trainData)
#Merge activityNr with the activityName
allData<- merge(genActivityLabel,allData,by.x="activityNr",by.y="activityNr")
#_________________________________________________________________________________________________
#Create a vector that will select the first 4 columns and then any other column where the column name 
# in allData contains either "std" or "mean". This is probably debatable but I think the "()" should be 
# used or else the "*meanFreq()*" will be shown. From the description of the variables they ditinguish 
#between mean(),std() and meanFreq() so I left meanfreq() out. That is how I understood the instructions
#for this project. There was also a discussion about this in the forum and the TA, David Hood, said it 
#didn't matter as long as you explain your reasoning well.
#glob2rx was used to convert the wildcard to regex and grepl
# to do the comparison with the regex. I also created a vector with 4xTRUE values and the rest false 
# so that the first four columns could be included. This is placed in allDataSubset

stdMeanVector<-c(rep(TRUE,4),rep(FALSE,dim(allData)[2]-4))|grepl(glob2rx("*std()*"),names(allData))|
        grepl(glob2rx("*mean()*"),names(allData))
allDataSubset<-allData[stdMeanVector]
#Substituting abbreviations for descriptive Variable names:
names(allDataSubset)<- gsub("std()","StandardDeviation",names(allDataSubset)) 
names(allDataSubset)<- gsub("Gyro","Gyroscope",names(allDataSubset)) 
names(allDataSubset)<- gsub("Acc","Accelerometer",names(allDataSubset)) 
names(allDataSubset)<- gsub("^f","frequency",names(allDataSubset)) 
names(allDataSubset)<- gsub("^t","time",names(allDataSubset)) 
names(allDataSubset)<- gsub("Mag","Magnitude",names(allDataSubset)) 

#Do the summary of data using the dplyr commands:
summaryDataSet<-tbl_df(allDataSubset) %>% select(-c(dataSource,activityNr)) %>% group_by(activityName,subject) %>% 
        summarise_each(funs(mean)) %>% arrange(activityName)
#write the table to a text file
write.table(summaryDataSet,"summaryDataSet.txt",row.name=FALSE)
#View summaryDataSet 
View(summaryDataSet)