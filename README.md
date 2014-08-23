Coursera Course Project : Getting and Cleaning Data (Johns Hopkins)
====
Readme
----
This repository contains : 
* A script(run_analysis.R) that performs all the steps as required
* A code book(CodeBook.md) that describes the data and all the work done on the data
* This readme 

The data used for the course project can be found [here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

The run_analysis.R script should be run in the same directory as the original dataset, that is, on the same level as README.txt, next to the "train" directory

The run_analysis.R script generates two new data sets :
* tidy_data1.txt - A merge of the training and test sets containing only the features related to the mean and standard deviation measurements in the original data set(inertial signal data not included). This data set also contains the activity label and subject for each observation

* tidy_data2.txt - Another merge of the training and test sets containing the average of all features in the original data set, grouped by activity and subject(in wide format)

