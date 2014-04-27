

### Transformation Steps

1. Read the training and test datasets (`x_train.txt` and `x_test.txt`) 
2. Take a subset of the columns representing only the mean and standard deviation values (mean() and std()). 
3. Associate additional columns to represent activity IDs and subject IDs read from `y_<dataset>.txt` and `subject_<dataset>.txt` files respectively.
4. Merge the training and the test sets to create one data set and save as `MeanStdDataset.txt`.ß
5. Associate an additional column with descriptive activity names as specified in `activity_labels.txt`.
6. Melt the dataset by specifying activity ID, name and subject ID as the only ID variables and then dcast with Activity and SUbcjet ID and aggregating by `mean`.
7. Save dataset as `TinyDataSet.txt`


