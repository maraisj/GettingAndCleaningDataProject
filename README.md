#Course Project - Getting and Cleaning Data

##General information

Author: Johannes Marais  
Course: Getting and Cleaning Data  
Submitted: 20 August 2015  

##Contents of the repository
1. [README.md](https://github.com/maraisj/GettingAndCleaningDataProject/blob/master/README.md) -> This file that gives an overview of the project and instructions on how to interact with the rest of the files.
2. [run_analysis.R](https://github.com/maraisj/GettingAndCleaningDataProject/blob/master/run_analysis.R) -> The R script that loads, transforms and saves the data. The output of the script is a tidy summarised data set.
3. [summaryDataSet.txt](https://github.com/maraisj/GettingAndCleaningDataProject/blob/master/summaryDataSet.txt) -> The data set that gets generated by running the *run_analysis.R* script.
4. [CodeBook.md](https://github.com/maraisj/GettingAndCleaningDataProject/blob/master/CodeBook.md) -> A description of the variables and data. It also describes the transformation that was done with the data.

##Example of the output

The [run_analysis.R](https://github.com/maraisj/GettingAndCleaningDataProject/blob/master/run_analysis.R) script in this repository will create a tidy dataset as described in the assignment instructions. The source of the data is given in the next section and in the resource section. If you wish to get a quick idea what the output of this R script looks like, please follow these steps:  

1. [Download the tidy data file.](https://github.com/maraisj/GettingAndCleaningDataProject/blob/master/summaryDataSet.txt)  
2. Open R and change the working directory to the download location.  
3. Run the following commands in R:  
```tidyData <- read.table("summaryDataSet.txt", header = TRUE)```  
   ```View(tidyData)```  

##Data Source
The data was obtained from the  [UCI machine learning website](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) and here is a link to [download the data.](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) 

##Instructions
Please follow these instruction to get the run_analysis.R script working on your pc:  

1. Download the dataset [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip). 
2. Unzip the dataset. This will create a directory called "UCI HAR Dataset". Move the entire "UCI HAR Dataset" directory to a directory of your choice but keep the directory name and directory structure intact. Lets call the directory where the "UCI HAR Dataset" will be stored the "BaseDirectory"
3. Download [run_analysis.R](https://github.com/maraisj/GettingAndCleaningDataProject/blob/master/run_analysis.R) script and place it in the "BaseDirectory"
4. Open R and change the working directory to the "BaseDirectory" location. You can check that the working directory is set correctly with this command:  
```getwd()```
6. The *dplyr* package is used in this script. Check if you have the *dplyr* package installed by running this command:  
```View(installed.packages())```  
If you cannot find *dplyr* in the list, then please run this command first:  
```install.packages("dplyr")```
7. In R, go to *File>Open File...* ,select the *run_analysis.R* script and click *Open*.
8. Select all the code of the *run_analysis.R* and press the *Run* button.

The summaryDataSet dataframe will be opened and will also be written as *summaryDataSet.txt* in the "BaseDirectory".

##Tidy Data
Take a look at the output of the file by either following the Instructions above or the instructions contained in "Example of the output" section. The dataset has 68 columns with 180 rows. The variables form the columns. These variables are the activity type, subject number and all the standard deviations and the means. The observations are in the rows and this makes it a tidy dataset as described in [3].

##Resources
1. [David's very long and detailed project FAQ](https://class.coursera.org/getdata-031/forum/thread?thread_id=28)  
2. [Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013.](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)
3. [Tidy Data by Hadley Wickham.](http://vita.had.co.nz/papers/tidy-data.pdf)