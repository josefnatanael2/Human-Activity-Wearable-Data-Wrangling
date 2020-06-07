
# Code Book

A summary of the resulting data fields in `tidy.txt`.

## Identifiers

* `subject` - Test subject ID
* `activity` - A label, the activity performed by the subject

## Features
Feature names are transformed into lowercase, without any periods (.) or dashes (-).
Abbreviated nouns are expanded, e.g. acc: accelerometer, t: time

Units and relevant information are given in the original dataset:

> The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
> 
> Subsequently, the body linear acceleration and angular velocity were
> derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and
> tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional
> signals were calculated using the Euclidean norm (tBodyAccMag,
> tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).
> 
> Finally a Fast Fourier Transform (FFT) was applied to some of these
> signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ,
> fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to
> indicate frequency domain signals). 
> 
> These signals were used to estimate variables of the feature vector
> for each pattern:   '-xyz' is used to denote 3-axial signals in the x,
> y and z directions.

- `timebodyaccelerometermeanx`
- `timebodyaccelerometermeany`
- `timebodyaccelerometermeanz`
- `timebodyaccelerometerstdx`
- `timebodyaccelerometerstdy`
- `timebodyaccelerometerstdz`
- `timegravityaccelerometermeanx`
- `timegravityaccelerometermeany`
- `timegravityaccelerometermeanz`
- `timegravityaccelerometerstdx`
- `timegravityaccelerometerstdy`
- `timegravityaccelerometerstdz`
- `timebodyaccelerometerjerkmeanx`
- `timebodyaccelerometerjerkmeany`
- `timebodyaccelerometerjerkmeanz`
- `timebodyaccelerometerjerkstdx`
- `timebodyaccelerometerjerkstdy`
- `timebodyaccelerometerjerkstdz`
- `timebodygyroscopemeanx`
- `timebodygyroscopemeany`
- `timebodygyroscopemeanz`
- `timebodygyroscopestdx`
- `timebodygyroscopestdy`
- `timebodygyroscopestdz`
- `timebodygyroscopejerkmeanx`
- `timebodygyroscopejerkmeany`
- `timebodygyroscopejerkmeanz`
- `timebodygyroscopejerkstdx`
- `timebodygyroscopejerkstdy`
- `timebodygyroscopejerkstdz`
- `timebodyaccelerometermagnitudemean`
- `timebodyaccelerometermagnitudestd`
- `timegravityaccelerometermagnitudemean`
- `timegravityaccelerometermagnitudestd`
- `timebodyaccelerometerjerkmagnitudemean`
- `timebodyaccelerometerjerkmagnitudestd`
- `timebodygyroscopemagnitudemean`
- `timebodygyroscopemagnitudestd`
- `timebodygyroscopejerkmagnitudemean`
- `timebodygyroscopejerkmagnitudestd`
- `frequencybodyaccelerometermeanx`
- `frequencybodyaccelerometermeany`
- `frequencybodyaccelerometermeanz`
- `frequencybodyaccelerometerstdx`
- `frequencybodyaccelerometerstdy`
- `frequencybodyaccelerometerstdz`
- `frequencybodyaccelerometermeanfreqx`
- `frequencybodyaccelerometermeanfreqy`
- `frequencybodyaccelerometermeanfreqz`
- `frequencybodyaccelerometerjerkmeanx`
- `frequencybodyaccelerometerjerkmeany`
- `frequencybodyaccelerometerjerkmeanz`
- `frequencybodyaccelerometerjerkstdx`
- `frequencybodyaccelerometerjerkstdy`
- `frequencybodyaccelerometerjerkstdz`
- `frequencybodyaccelerometerjerkmeanfreqx`
- `frequencybodyaccelerometerjerkmeanfreqy`
- `frequencybodyaccelerometerjerkmeanfreqz`
- `frequencybodygyroscopemeanx`
- `frequencybodygyroscopemeany`
- `frequencybodygyroscopemeanz`
- `frequencybodygyroscopestdx`
- `frequencybodygyroscopestdy`
- `frequencybodygyroscopestdz`
- `frequencybodygyroscopemeanfreqx`
- `frequencybodygyroscopemeanfreqy`
- `frequencybodygyroscopemeanfreqz`
- `frequencybodyaccelerometermagnitudemean`
- `frequencybodyaccelerometermagnitudestd`
- `frequencybodyaccelerometermagnitudemeanfreq`
- `frequencybodyaccelerometerjerkmagnitudemean`
- `frequencybodyaccelerometerjerkmagnitudestd`
- `frequencybodyaccelerometerjerkmagnitudemeanfreq`
- `frequencybodygyroscopemagnitudemean`
- `frequencybodygyroscopemagnitudestd`
- `frequencybodygyroscopemagnitudemeanfreq`
- `frequencybodygyroscopejerkmagnitudemean`
- `frequencybodygyroscopejerkmagnitudestd`
- `frequencybodygyroscopejerkmagnitudemeanfreq`


## Activity Labels

* `WALKING`: subject was recorded walking 
* `WALKING_UPSTAIRS`: subject was recorded walking up 
* `WALKING_DOWNSTAIRS`: subject was recorded walking down
* `SITTING`: subject was recorded sitting 
* `STANDING`: subject was recorded standing 
* `LAYING`: subject was recorded laying down 

## Output data: `tidy.txt`
Contains average of each variable for each activity and each subject from the cleaned data `merged_cleaned_data.txt`