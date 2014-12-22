## This script is the solution set for the course project in Getting and Cleaning Data
## The variable assigned here are described in CodeBook.md
##
##
##

## 1) Merge the training and the test sets to create one data set


## We start by importing the data for the train and test sets.

strn <- read.table("./getdata-projectfiles-UCI HAR Dataset//UCI HAR Dataset/train/subject_train.txt", header = FALSE)
ste <- read.table("./getdata-projectfiles-UCI HAR Dataset//UCI HAR Dataset/test/subject_test.txt", header = FALSE)

xtrn <- read.table("./getdata-projectfiles-UCI HAR Dataset//UCI HAR Dataset/train/X_train.txt", header = FALSE)
xte <- read.table("./getdata-projectfiles-UCI HAR Dataset//UCI HAR Dataset/test/X_test.txt", header = FALSE)

ytrn <- read.table("./getdata-projectfiles-UCI HAR Dataset//UCI HAR Dataset/train/y_train.txt", header = FALSE)
yte <- read.table("./getdata-projectfiles-UCI HAR Dataset//UCI HAR Dataset/test/y_test.txt", header = FALSE)

baxtrn <- read.table("./getdata-projectfiles-UCI HAR Dataset//UCI HAR Dataset/train/Inertial Signals/body_acc_x_train.txt", header = FALSE)
baxt <- read.table("./getdata-projectfiles-UCI HAR Dataset//UCI HAR Dataset/test/Inertial Signals/body_acc_x_test.txt", header = FALSE)

baytrn <- read.table("./getdata-projectfiles-UCI HAR Dataset//UCI HAR Dataset/train/Inertial Signals/body_acc_y_train.txt", header = FALSE)
bayt <- read.table("./getdata-projectfiles-UCI HAR Dataset//UCI HAR Dataset/test/Inertial Signals/body_acc_y_test.txt", header = FALSE)

baztrn <- read.table("./getdata-projectfiles-UCI HAR Dataset//UCI HAR Dataset/train/Inertial Signals/body_acc_z_train.txt", header = FALSE)
bazt <- read.table("./getdata-projectfiles-UCI HAR Dataset//UCI HAR Dataset/test/Inertial Signals/body_acc_z_test.txt", header = FALSE)

bgxtrn <- read.table("./getdata-projectfiles-UCI HAR Dataset//UCI HAR Dataset/train/Inertial Signals/body_gyro_x_train.txt", header = FALSE)
bgxt <- read.table("./getdata-projectfiles-UCI HAR Dataset//UCI HAR Dataset/test/Inertial Signals/body_gyro_x_test.txt", header = FALSE)

bgytrn <- read.table("./getdata-projectfiles-UCI HAR Dataset//UCI HAR Dataset/train/Inertial Signals/body_gyro_y_train.txt", header = FALSE)
bgyt <- read.table("./getdata-projectfiles-UCI HAR Dataset//UCI HAR Dataset/test/Inertial Signals/body_gyro_y_test.txt", header = FALSE)

bgztrn <- read.table("./getdata-projectfiles-UCI HAR Dataset//UCI HAR Dataset/train/Inertial Signals/body_gyro_z_train.txt", header = FALSE)
bgzt <- read.table("./getdata-projectfiles-UCI HAR Dataset//UCI HAR Dataset/test/Inertial Signals/body_gyro_z_test.txt", header = FALSE)

taxtrn <- read.table("./getdata-projectfiles-UCI HAR Dataset//UCI HAR Dataset/train/Inertial Signals/total_acc_x_train.txt", header = FALSE)
taxt <- read.table("./getdata-projectfiles-UCI HAR Dataset//UCI HAR Dataset/test/Inertial Signals/total_acc_x_test.txt", header = FALSE)

taytrn <- read.table("./getdata-projectfiles-UCI HAR Dataset//UCI HAR Dataset/train/Inertial Signals/total_acc_y_train.txt", header = FALSE)
tayt <- read.table("./getdata-projectfiles-UCI HAR Dataset//UCI HAR Dataset/test/Inertial Signals/total_acc_y_test.txt", header = FALSE)

taztrn <- read.table("./getdata-projectfiles-UCI HAR Dataset//UCI HAR Dataset/train/Inertial Signals/total_acc_z_train.txt", header = FALSE)
tazt <- read.table("./getdata-projectfiles-UCI HAR Dataset//UCI HAR Dataset/test/Inertial Signals/total_acc_z_test.txt", header = FALSE)


## Next we use rbind() to merge test and train datasets

stot <- rbind(ste,strn)
xtot <- rbind(xte,xtrn)
ytot <- rbind(yte,ytrn)
baxtot <- rbind(baxt, baxtrn)
baytot <- rbind(bayt, baytrn)
baztot <- rbind(bazt, baztrn)
bgxtot <- rbind(bgxt, bgxtrn)
bgytot <- rbind(bgyt, bgytrn)
bgztot <- rbind(bgzt, bgztrn)
taxtot <- rbind(taxt, taxtrn)
taytot <- rbind(tayt, taytrn)
taztot <- rbind(tazt, taztrn)


## Now we create a complete dataset that contains sample points from all measurements

## creating the required directories
dir.create("./getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/one")
dir.create("./getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset//one//Inertial Signals")

## writing the complete dataset to files
write.table(stot, "./getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset//one/subject_one.txt", row.names = FALSE, col.names = FALSE)
write.table(xtot, "./getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset//one/x_one.txt", row.names = FALSE, col.names = FALSE)
write.table(ytot, "./getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset//one/y_one.txt", row.names = FALSE, col.names = FALSE)
write.table(baxtot, "./getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset//one/Inertial Signals/body_acc_x_one.txt", row.names = FALSE, col.names = FALSE)
write.table(baytot, "./getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset//one/Inertial Signals/body_acc_y_one.txt", row.names = FALSE, col.names = FALSE)
write.table(baztot, "./getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset//one/Inertial Signals/body_acc_z_one.txt", row.names = FALSE, col.names = FALSE)
write.table(bgxtot, "./getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset//one/Inertial Signals/body_gyro_x_one.txt", row.names = FALSE, col.names = FALSE)
write.table(bgytot, "./getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset//one/Inertial Signals/body_gyro_y_one.txt", row.names = FALSE, col.names = FALSE)
write.table(bgztot, "./getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset//one/Inertial Signals/body_gyro_z_one.txt", row.names = FALSE, col.names = FALSE)
write.table(taxtot, "./getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset//one/Inertial Signals/total_acc_x_one.txt", row.names = FALSE, col.names = FALSE)
write.table(taytot, "./getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset//one/Inertial Signals/total_acc_y_one.txt", row.names = FALSE, col.names = FALSE)
write.table(taztot, "./getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset//one/Inertial Signals/total_acc_z_one.txt", row.names = FALSE, col.names = FALSE)


## 2) Extracts only the measurements on the mean and standard deviation for each measurement
## In this, in my opinion, the problem is asking me to extract only those columns which are mean or std values in "features.txt"

st_mn <- read.table("./getdata-projectfiles-UCI HAR Dataset/mean_std.txt", header = FALSE)  # This is a file that I created manually by going through the features.txt file.
st_mn <- as.vector(st_mn$V1)  # I saved all the columns that had mean and std as a vector and I plan to use it to subset the data.


## Following variable xtot_ex contains the required subset
xtot_ex <- xtot[,st_mn]


## 3) Uses descriptive activity names to name the activities in the data set

activity <- read.table("getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/one/y_one.txt", header = FALSE)
activity_vector <- as.vector(activity$V1)
activity_label <- factor(activity_vector, levels = c(1,2,3,4,5,6), labels = c('WALKING','WALKING_UPSTAIRS','WALKING_DOWNSTAIRS','SITTING','STANDING','LAYING'))
write.table(activity_label, "./getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/one/activity_labels.txt", row.names = FALSE, col.names = FALSE, quote = FALSE)


## 4) Appropriately labels the data set with descriptive variable names

variables <- read.table("getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/features.txt", header = FALSE)
headers <- as.vector(variables$V2[st_mn])
headers <- str_replace_all(headers,"-", "")
headers <- gsub("[][!#$%()*,.:;<=>@^_`|~.{}]", "", headers)
colnames(xtot_ex) <- headers


## 5) From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject
## I first bind the data from the previous step with the activity and volunteer id

complete_data <- cbind(xtot_ex, activity_label, stot)
actlab_cl <- split(complete_data , complete_data$activity_label)
std <- actlab_cl["STANDING"]
wlkg <- actlab_cl["WALKING"]
wlkg_up <- actlab_cl["WALKING_UPSTAIRS"]
wlkg_dn <- actlab_cl["WALKING_DOWNSTAIRS"]
sit <- actlab_cl["SITTING"]
lay <- actlab_cl["LAYING"]
datamelt_std <- melt(std, id = c("V1"), measure.vars=headers)
datamelt_wlkg <- melt(wlkg, id = c("V1"), measure.vars=headers)
datamelt_wlkg_up <- melt(wlkg_up, id = c("V1"), measure.vars=headers)
datamelt_wlkg_dn <- melt(wlkg_dn, id = c("V1"), measure.vars=headers)
datamelt_sit <- melt(sit, id = c("V1"), measure.vars=headers)
datamelt_lay <- melt(lay, id = c("V1"), measure.vars=headers)
cast_std <- cbind(dcast(datamelt_std, V1~headers,mean), rep("STANDING", times = 30))
cast_wlkg <- cbind(dcast(datamelt_wlkg, V1~headers,mean), rep("WALKING", times = 30))
cast_wlkg_up <- cbind(dcast(datamelt_wlkg_up, V1~headers,mean), rep("WALKING_UPSTAIRS", times = 30))
cast_wlkg_dn <- cbind(dcast(datamelt_wlkg_dn, V1~headers,mean), rep("WALKING_DOWNSTAIRS", times = 30))
cast_sit <- cbind(dcast(datamelt_sit, V1~headers,mean), rep("SITTING", times = 30))
cast_lay <- cbind(dcast(datamelt_lay, V1~headers,mean), rep("LAYING", times = 30))

tidy_data <- rbind(cast_std, cast_wlkg, cast_wlkg_up, cast_wlkg_dn, cast_sit,cast_lay)
write.table(tidy_data, "./getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset//one/tidy_data.txt", row.names = FALSE, col.names = FALSE)