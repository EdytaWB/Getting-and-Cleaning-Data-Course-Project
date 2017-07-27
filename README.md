Getting and Cleaning Data Course Project
================

Introduction
------------

This repository contains files that are a part of "Getting and Cleaning Data Course Project" on Coursera learning platform, i.e. R script "run\_analysis.R", tidy data set "tidy.txt", "CodeBook.md" and "README.md".

The raw data
------------

The project is based on the data downloaded from <https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip> More information can be found at the original site: <http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones>

The "run\_analysis.R" script and the "tidy.txt"" data set
---------------------------------------------------------

The run\_analysis.R script is based on the above-mentioned data and processes it in line with the 5-step project instruction:

1.  Downloads and unzips the data if it hasn't been done before.
2.  Loads the required data sets, merges and labels the data into one final data set.
3.  Extracts measurement columns with "mean" or "std" in their names.
4.  Turns "Activity" variable into factor with activity names as the factor labels.
5.  Turns the column names in the data set into more descriptive ones.
6.  Creates a new "tidy.txt"" data set with averages of all the measurement variables grouped by the activity and subject variables, i.e. 180 unique pairs (rows) (6 activities times 30 subjects).

The Code Book
-------------

A description of all the variables in "tidy.txt" data set.
