# Downloads the dataset
data_url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(data_url, dest="dataset.zip")

# Unzips the data
unzip("dataset.zip")

# Downloads the description of the names of the data
desc_url <- "http://archive.ics.uci.edu/ml/machine-learning-databases/00240/UCI%20HAR%20Dataset.names"
download.file(desc_url, dest="UCI HAR Dataset.names")
