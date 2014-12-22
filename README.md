README

In this assignment, I have written the script run_analysis.R and the various aspects of it are as follows:

1) For the first part of the problem, the script imports the data for test and train dataset and then merges them using rbind() to give a complete dataset output.

2) For the second part, the script extracts only the measurements on the mean and standard deviation for each measurement and to do this I had to go through the figure.txt file 
to find out which ones to include. However, the same task can be accomplished using grep function.

3) For descriptive activity labels I use the factor() function to convert the data from numeric value to actual labels

4) For this part, I just took the vector containing the list of std and mean from part 2 and then used it to subset the complete dataset.

5) For this I first split the data using split() function based on activity label and then I used reshaping module of r to melt the data and recast them according to the mean values for each activity.

