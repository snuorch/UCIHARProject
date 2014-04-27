


#Read Test features (ytest)
y_test <- read.table("UCI HAR Dataset/test/y_test.txt")
#Read Test Observation (xtest)
x_test <- read.table("UCI HAR Dataset/test/X_test.txt")
#Read Test Subjects IDs 
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")

#Read Train features (ytest)
y_train <- read.table("UCI HAR Dataset/train/y_train.txt")
#Read Train Observation (xtest)
x_train <- read.table("UCI HAR Dataset/train/X_train.txt")
#Read Train Subjects IDs 
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")


#Create one Dataset with X,Y,SubcjectIDs for Train e for Test
df_test <- cbind(x_test, y_test, subject_test)
df_train <- cbind(x_train, y_train, subject_train)

#Create one Dataset including Train and Test
df <- rbind(df_train,df_test)

#Read activities
activities <- read.table("UCI HAR Dataset/activity_labels.txt", col.names = c("ID", "Activity"))

#Read Features
features <- read.table("UCI HAR Dataset/features.txt", col.names = c("ID","Feature"))

#Assign Features names to X columns of Dataset df
#Activity to Y column
#SubjectID to Subject column
names(df) <- c(as.character(features$Feature),"Activity","SubjectID")

#Convert Activity colum to factor
df[,"Activity"] <- factor(df[,"Activity"], levels = activities$ID, labels= activities$Activity)

#Subsetting Dataset to columns containing mean and std in their names (ignoring case)
#But leaving Activity and SubjectID columns

df <- df[,grep("mean\\(\\)|std\\(\\)|Activity|SubjectID",names(df),ignore.case=FALSE)]

write.table(df,"MeanStdDataset.txt")



