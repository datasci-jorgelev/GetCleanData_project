Getting and Cleaning Data Project
=================================

## Human Activity Recognition Using Smartphones Data Set 

The next files can be found in this repo:

* [CodeBook.md](CodeBook.md): Describes the data of the tidy data sets
* [run_analysis.R](run_analysis.R): The script that makes tidy the original data. 
* [tidyData.txt](tidyData.txt): The first tidy data set of the project
* [avg_tidyData.txt](avg_tidyData.txt): The average tidy data of the project (five step):

## Important!

I didn't follow the order of the steps, but the resulting tidy data sets is the same. I had problems of memory, so I first shrink the number of columns (mean and standard deviation) of the two test and train data sets before I merged them. In order to get that, I added the features labels from the features.txt file, and then I used the grep command to filter the mean and std deviation from all columns. 

You can follow the comments of the [run_analysis.R](run_analysis.R) file for more details.

The original data can be downloaded from here: [http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

