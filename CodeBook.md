# Code Book

The following features comes from the accelerometer and gyroscope 3-axial sensors of a smartphote (Samsung Galaxy SII). 

## The notation of the variables:

file -> `tidyData.txt`

### Domain of measure 
* t -> The prefix 't' denotes time.
* f -> Denotes frequency. 

### Body vs Gravity
* Body -> from body (can be from the accelorometer or gyroscope signal)
* Gravity -> from the accelorometer

### The sensor
* Acc -> the signal comes from the accelerometer sensor.
* Gyro -> the signal comes from the gyroscope sensor. 

### Type of measure
* mean -> stands from stadistic mean.
* std -> stands from standard deviation.

### Axis 

* X -> x axis
* Y -> y axis
* Z -> z axis


In addition to these variables, the first two columns describe the anonymous subject who carries the smartphone ("subjects"), and what activity was recorded ("activities").

The activities recorded can be:

* WALKING
* WALKING_UPSTAIRS
* WALKING_DOWNSTAIRS
* SITTING
* STANDING
* LAYING

There wasn't any transformation over the original values

** The average tidy data set

file -> `avg_tidyData.txt`

This data set show the mean of all variables grouped by subject and activity


