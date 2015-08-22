# CodeBook

## Summary of Original Research
* All data was taken from the following Source: Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
* They recorded kinematic data from a group of 30 volunteers performing various activities
* Data was taken using Accelerometers and Gyroscopes embedded in Samsung Galaxy S II smartphones.
* The data was randomly partitioned into two datasets to train machine learning algorithms and to test them.
* Full information regarding their research can be found at: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## Data Manipulation (see README.md)
1. Added the subject and activity values as new columns of the test and train data.
2. Merged test and train data by appending train to test.
3. Extracted variables containing mean or standard deviation data from the merged data set.
	* Standard deviations were extracted by selecting columns with "std" in their names
	* Means were extracted by selecting columns with "mean" in their names
		* I excluded the angle data from the data gathering since they aren't actually means of underlying data, and thus don't match the assignment
		* To carry this out I simply made the selection case sensitive, because all instances of "mean" in the angle data had "mean" capitalized
		* I checked, and none of the other mean values have "mean" capitalized. So this shouldn't exclude any data that we want.
4. The original variable names were expanded to be descriptive and prevent confusion.
5. Constructed kinematics.txt by taking the mean of every variable for each combination of subject and activity.

## Variable Summary
### Variable Names were Constructed from Descriptors
* time: the variable was determined using from raw time domain data.
* frequency: the variable was determined using data that had undergone a Fast Fourier Transform, i.e. frequency domain data.
* body: the acceleration data for the subject's body movement was used.
* gravity: the acceleration data for gravity was used.
* accelerometer: source data was acquired using an accelerometer.
* gyroscope: source data was acquired using a gyroscope.
* mean: this variable was determined by taking the mean of the data.
* standard_deviation: this variable was determined by taking the standard deviation of the data.
* weighted_mean: the variable determined by taking the weighted mean of the frequency components.
* jerk: the variable was determined as the time derivative of the acceleration data. Presumably, the time derivative was taken before applying the Fourier Transforms when getting the frequency data.
* x, y, and z: 3-axial signals in the x, y, and z directions, respectively.

### The variables were normalized in the original data set
* In other words, the data is unitless
* Unless otherwise stated, the data ranges from -1 to +1, inclusive

## Individual Description of Each Variable
*  subject_id  <br>  A number identifying test subjects. Ranges from 1 to 30.  

*  activity  <br>  The position the test subject was in for a given run.  Values are "WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", and "LAYING".

*  time_body_accelerometer_mean_x  <br>  This variable was originally derived from the raw time domain data on the component of acceleration resulting from the motion of the subject's body. Accelerometers were the source of this data.  

*  time_body_accelerometer_mean_y  <br>  This variable was originally derived from the raw time domain data on the component of acceleration resulting from the motion of the subject's body. Accelerometers were the source of this data.  

*  time_body_accelerometer_mean_z  <br>  This variable was originally derived from the raw time domain data on the component of acceleration resulting from the motion of the subject's body. Accelerometers were the source of this data.  

*  time_gravity_accelerometer_mean_x  <br>  This variable was originally derived from the raw time domain data on the component of acceleration resulting from gravity. Accelerometers were the source of this data.  

*  time_gravity_accelerometer_mean_y  <br>  This variable was originally derived from the raw time domain data on the component of acceleration resulting from gravity. Accelerometers were the source of this data.  

*  time_gravity_accelerometer_mean_z  <br>  This variable was originally derived from the raw time domain data on the component of acceleration resulting from gravity. Accelerometers were the source of this data.  

*  time_body_accelerometer_jerk_mean_x  <br>  This variable was originally derived from the raw time domain data on the component of acceleration resulting from the motion of the subject's body. Accelerometers were the source of this data. Jerk was determined by taking the time derivative of acceleration for the associated variable.  

*  time_body_accelerometer_jerk_mean_y  <br>  This variable was originally derived from the raw time domain data on the component of acceleration resulting from the motion of the subject's body. Accelerometers were the source of this data. Jerk was determined by taking the time derivative of acceleration for the associated variable.  

*  time_body_accelerometer_jerk_mean_z  <br>  This variable was originally derived from the raw time domain data on the component of acceleration resulting from the motion of the subject's body. Accelerometers were the source of this data. Jerk was determined by taking the time derivative of acceleration for the associated variable.  

*  time_body_gyroscope_mean_x  <br>  This variable was originally derived from the raw time domain data on the component of acceleration resulting from the motion of the subject's body. Gyroscopes were the source of this data.  

*  time_body_gyroscope_mean_y  <br>  This variable was originally derived from the raw time domain data on the component of acceleration resulting from the motion of the subject's body. Gyroscopes were the source of this data.  

*  time_body_gyroscope_mean_z  <br>  This variable was originally derived from the raw time domain data on the component of acceleration resulting from the motion of the subject's body. Gyroscopes were the source of this data.  

*  time_body_gyroscope_jerk_mean_x  <br>  This variable was originally derived from the raw time domain data on the component of acceleration resulting from the motion of the subject's body. Gyroscopes were the source of this data. Jerk was determined by taking the time derivative of acceleration for the associated variable.  

*  time_body_gyroscope_jerk_mean_y  <br>  This variable was originally derived from the raw time domain data on the component of acceleration resulting from the motion of the subject's body. Gyroscopes were the source of this data. Jerk was determined by taking the time derivative of acceleration for the associated variable.  

*  time_body_gyroscope_jerk_mean_z  <br>  This variable was originally derived from the raw time domain data on the component of acceleration resulting from the motion of the subject's body. Gyroscopes were the source of this data. Jerk was determined by taking the time derivative of acceleration for the associated variable.  

*  time_body_accelerometer_magnitude_mean  <br>  This variable was originally derived from the raw time domain data on the component of acceleration resulting from the motion of the subject's body. Accelerometers were the source of this data. This is the three dimensional magnitude of the associated variable.  

*  time_gravity_accelerometer_magnitude_mean  <br>  This variable was originally derived from the raw time domain data on the component of acceleration resulting from gravity. Accelerometers were the source of this data. This is the three dimensional magnitude of the associated variable.  

*  time_body_accelerometer_jerk_magnitude_mean  <br>  This variable was originally derived from the raw time domain data on the component of acceleration resulting from the motion of the subject's body. Accelerometers were the source of this data. Jerk was determined by taking the time derivative of acceleration for the associated variable. This is the three dimensional magnitude of the associated variable.  

*  time_body_gyroscope_magnitude_mean  <br>  This variable was originally derived from the raw time domain data on the component of acceleration resulting from the motion of the subject's body. Gyroscopes were the source of this data. This is the three dimensional magnitude of the associated variable.  

*  time_body_gyroscope_jerk_magnitude_mean  <br>  This variable was originally derived from the raw time domain data on the component of acceleration resulting from the motion of the subject's body. Gyroscopes were the source of this data. Jerk was determined by taking the time derivative of acceleration for the associated variable. This is the three dimensional magnitude of the associated variable.  

*  frequency_body_accelerometer_mean_x  <br>  This variable was derived from frequency domain data generated by applying Fast Fourier Transforms to the time domain data on the component of acceleration resulting from the motion of the subject's body. Accelerometers were the source of this data.  

*  frequency_body_accelerometer_mean_y  <br>  This variable was derived from frequency domain data generated by applying Fast Fourier Transforms to the time domain data on the component of acceleration resulting from the motion of the subject's body. Accelerometers were the source of this data.  

*  frequency_body_accelerometer_mean_z  <br>  This variable was derived from frequency domain data generated by applying Fast Fourier Transforms to the time domain data on the component of acceleration resulting from the motion of the subject's body. Accelerometers were the source of this data.  

*  frequency_body_accelerometer_weighted_mean_x  <br>  This variable was derived from frequency domain data generated by applying Fast Fourier Transforms to the time domain data on the component of acceleration resulting from the motion of the subject's body. Accelerometers were the source of this data. Mean frequency determined by taking the weighted average of the frequency components.  

*  frequency_body_accelerometer_weighted_mean_y  <br>  This variable was derived from frequency domain data generated by applying Fast Fourier Transforms to the time domain data on the component of acceleration resulting from the motion of the subject's body. Accelerometers were the source of this data. Mean frequency determined by taking the weighted average of the frequency components.  

*  frequency_body_accelerometer_weighted_mean_z  <br>  This variable was derived from frequency domain data generated by applying Fast Fourier Transforms to the time domain data on the component of acceleration resulting from the motion of the subject's body. Accelerometers were the source of this data. Mean frequency determined by taking the weighted average of the frequency components.  

*  frequency_body_accelerometer_jerk_mean_x  <br>  This variable was derived from frequency domain data generated by applying Fast Fourier Transforms to the time domain data on the component of acceleration resulting from the motion of the subject's body. Accelerometers were the source of this data. Jerk was determined by taking the time derivative of acceleration for the associated variable.  

*  frequency_body_accelerometer_jerk_mean_y  <br>  This variable was derived from frequency domain data generated by applying Fast Fourier Transforms to the time domain data on the component of acceleration resulting from the motion of the subject's body. Accelerometers were the source of this data. Jerk was determined by taking the time derivative of acceleration for the associated variable.  

*  frequency_body_accelerometer_jerk_mean_z  <br>  This variable was derived from frequency domain data generated by applying Fast Fourier Transforms to the time domain data on the component of acceleration resulting from the motion of the subject's body. Accelerometers were the source of this data. Jerk was determined by taking the time derivative of acceleration for the associated variable.  

*  frequency_body_accelerometer_jerk_weighted_mean_x  <br>  This variable was derived from frequency domain data generated by applying Fast Fourier Transforms to the time domain data on the component of acceleration resulting from the motion of the subject's body. Accelerometers were the source of this data. Jerk was determined by taking the time derivative of acceleration for the associated variable. Mean frequency determined by taking the weighted average of the frequency components.  

*  frequency_body_accelerometer_jerk_weighted_mean_y  <br>  This variable was derived from frequency domain data generated by applying Fast Fourier Transforms to the time domain data on the component of acceleration resulting from the motion of the subject's body. Accelerometers were the source of this data. Jerk was determined by taking the time derivative of acceleration for the associated variable. Mean frequency determined by taking the weighted average of the frequency components.  

*  frequency_body_accelerometer_jerk_weighted_mean_z  <br>  This variable was derived from frequency domain data generated by applying Fast Fourier Transforms to the time domain data on the component of acceleration resulting from the motion of the subject's body. Accelerometers were the source of this data. Jerk was determined by taking the time derivative of acceleration for the associated variable. Mean frequency determined by taking the weighted average of the frequency components.  

*  frequency_body_gyroscope_mean_x  <br>  This variable was derived from frequency domain data generated by applying Fast Fourier Transforms to the time domain data on the component of acceleration resulting from the motion of the subject's body. Gyroscopes were the source of this data.  

*  frequency_body_gyroscope_mean_y  <br>  This variable was derived from frequency domain data generated by applying Fast Fourier Transforms to the time domain data on the component of acceleration resulting from the motion of the subject's body. Gyroscopes were the source of this data.  

*  frequency_body_gyroscope_mean_z  <br>  This variable was derived from frequency domain data generated by applying Fast Fourier Transforms to the time domain data on the component of acceleration resulting from the motion of the subject's body. Gyroscopes were the source of this data.  

*  frequency_body_gyroscope_weighted_mean_x  <br>  This variable was derived from frequency domain data generated by applying Fast Fourier Transforms to the time domain data on the component of acceleration resulting from the motion of the subject's body. Gyroscopes were the source of this data. Mean frequency determined by taking the weighted average of the frequency components.  

*  frequency_body_gyroscope_weighted_mean_y  <br>  This variable was derived from frequency domain data generated by applying Fast Fourier Transforms to the time domain data on the component of acceleration resulting from the motion of the subject's body. Gyroscopes were the source of this data. Mean frequency determined by taking the weighted average of the frequency components.  

*  frequency_body_gyroscope_weighted_mean_z  <br>  This variable was derived from frequency domain data generated by applying Fast Fourier Transforms to the time domain data on the component of acceleration resulting from the motion of the subject's body. Gyroscopes were the source of this data. Mean frequency determined by taking the weighted average of the frequency components.  

*  frequency_body_accelerometer_magnitude_mean  <br>  This variable was derived from frequency domain data generated by applying Fast Fourier Transforms to the time domain data on the component of acceleration resulting from the motion of the subject's body. Accelerometers were the source of this data. This is the three dimensional magnitude of the associated variable.  

*  frequency_body_accelerometer_magnitude_weighted_mean  <br>  This variable was derived from frequency domain data generated by applying Fast Fourier Transforms to the time domain data on the component of acceleration resulting from the motion of the subject's body. Accelerometers were the source of this data. This is the three dimensional magnitude of the associated variable. Mean frequency determined by taking the weighted average of the frequency components.  

*  frequency_body_accelerometer_jerk_magnitude_mean  <br>  This variable was derived from frequency domain data generated by applying Fast Fourier Transforms to the time domain data on the component of acceleration resulting from the motion of the subject's body. Accelerometers were the source of this data. Jerk was determined by taking the time derivative of acceleration for the associated variable. This is the three dimensional magnitude of the associated variable.  

*  frequency_body_accelerometer_jerk_magnitude_weighted_mean  <br>  This variable was derived from frequency domain data generated by applying Fast Fourier Transforms to the time domain data on the component of acceleration resulting from the motion of the subject's body. Accelerometers were the source of this data. Jerk was determined by taking the time derivative of acceleration for the associated variable. This is the three dimensional magnitude of the associated variable. Mean frequency determined by taking the weighted average of the frequency components.  

*  frequency_body_gyroscope_magnitude_mean  <br>  This variable was derived from frequency domain data generated by applying Fast Fourier Transforms to the time domain data on the component of acceleration resulting from the motion of the subject's body. Gyroscopes were the source of this data. This is the three dimensional magnitude of the associated variable.  

*  frequency_body_gyroscope_magnitude_weighted_mean  <br>  This variable was derived from frequency domain data generated by applying Fast Fourier Transforms to the time domain data on the component of acceleration resulting from the motion of the subject's body. Gyroscopes were the source of this data. This is the three dimensional magnitude of the associated variable. Mean frequency determined by taking the weighted average of the frequency components.  

*  frequency_body_gyroscope_jerk_magnitude_mean  <br>  This variable was derived from frequency domain data generated by applying Fast Fourier Transforms to the time domain data on the component of acceleration resulting from the motion of the subject's body. Gyroscopes were the source of this data. Jerk was determined by taking the time derivative of acceleration for the associated variable. This is the three dimensional magnitude of the associated variable.  

*  frequency_body_gyroscope_jerk_magnitude_weighted_mean  <br>  This variable was derived from frequency domain data generated by applying Fast Fourier Transforms to the time domain data on the component of acceleration resulting from the motion of the subject's body. Gyroscopes were the source of this data. Jerk was determined by taking the time derivative of acceleration for the associated variable. This is the three dimensional magnitude of the associated variable. Mean frequency determined by taking the weighted average of the frequency components.  

*  time_body_accelerometer_standard_deviation_x  <br>  This variable was originally derived from the raw time domain data on the component of acceleration resulting from the motion of the subject's body. Accelerometers were the source of this data.  

*  time_body_accelerometer_standard_deviation_y  <br>  This variable was originally derived from the raw time domain data on the component of acceleration resulting from the motion of the subject's body. Accelerometers were the source of this data.  

*  time_body_accelerometer_standard_deviation_z  <br>  This variable was originally derived from the raw time domain data on the component of acceleration resulting from the motion of the subject's body. Accelerometers were the source of this data.  

*  time_gravity_accelerometer_standard_deviation_x  <br>  This variable was originally derived from the raw time domain data on the component of acceleration resulting from gravity. Accelerometers were the source of this data.  

*  time_gravity_accelerometer_standard_deviation_y  <br>  This variable was originally derived from the raw time domain data on the component of acceleration resulting from gravity. Accelerometers were the source of this data.  

*  time_gravity_accelerometer_standard_deviation_z  <br>  This variable was originally derived from the raw time domain data on the component of acceleration resulting from gravity. Accelerometers were the source of this data.  

*  time_body_accelerometer_jerk_standard_deviation_x  <br>  This variable was originally derived from the raw time domain data on the component of acceleration resulting from the motion of the subject's body. Accelerometers were the source of this data. Jerk was determined by taking the time derivative of acceleration for the associated variable.  

*  time_body_accelerometer_jerk_standard_deviation_y  <br>  This variable was originally derived from the raw time domain data on the component of acceleration resulting from the motion of the subject's body. Accelerometers were the source of this data. Jerk was determined by taking the time derivative of acceleration for the associated variable.  

*  time_body_accelerometer_jerk_standard_deviation_z  <br>  This variable was originally derived from the raw time domain data on the component of acceleration resulting from the motion of the subject's body. Accelerometers were the source of this data. Jerk was determined by taking the time derivative of acceleration for the associated variable.  

*  time_body_gyroscope_standard_deviation_x  <br>  This variable was originally derived from the raw time domain data on the component of acceleration resulting from the motion of the subject's body. Gyroscopes were the source of this data.  

*  time_body_gyroscope_standard_deviation_y  <br>  This variable was originally derived from the raw time domain data on the component of acceleration resulting from the motion of the subject's body. Gyroscopes were the source of this data.  

*  time_body_gyroscope_standard_deviation_z  <br>  This variable was originally derived from the raw time domain data on the component of acceleration resulting from the motion of the subject's body. Gyroscopes were the source of this data.  

*  time_body_gyroscope_jerk_standard_deviation_x  <br>  This variable was originally derived from the raw time domain data on the component of acceleration resulting from the motion of the subject's body. Gyroscopes were the source of this data. Jerk was determined by taking the time derivative of acceleration for the associated variable.  

*  time_body_gyroscope_jerk_standard_deviation_y  <br>  This variable was originally derived from the raw time domain data on the component of acceleration resulting from the motion of the subject's body. Gyroscopes were the source of this data. Jerk was determined by taking the time derivative of acceleration for the associated variable.  

*  time_body_gyroscope_jerk_standard_deviation_z  <br>  This variable was originally derived from the raw time domain data on the component of acceleration resulting from the motion of the subject's body. Gyroscopes were the source of this data. Jerk was determined by taking the time derivative of acceleration for the associated variable.  

*  time_body_accelerometer_magnitude_standard_deviation  <br>  This variable was originally derived from the raw time domain data on the component of acceleration resulting from the motion of the subject's body. Accelerometers were the source of this data. This is the three dimensional magnitude of the associated variable.  

*  time_gravity_accelerometer_magnitude_standard_deviation  <br>  This variable was originally derived from the raw time domain data on the component of acceleration resulting from gravity. Accelerometers were the source of this data. This is the three dimensional magnitude of the associated variable.  

*  time_body_accelerometer_jerk_magnitude_standard_deviation  <br>  This variable was originally derived from the raw time domain data on the component of acceleration resulting from the motion of the subject's body. Accelerometers were the source of this data. Jerk was determined by taking the time derivative of acceleration for the associated variable. This is the three dimensional magnitude of the associated variable.  

*  time_body_gyroscope_magnitude_standard_deviation  <br>  This variable was originally derived from the raw time domain data on the component of acceleration resulting from the motion of the subject's body. Gyroscopes were the source of this data. This is the three dimensional magnitude of the associated variable.  

*  time_body_gyroscope_jerk_magnitude_standard_deviation  <br>  This variable was originally derived from the raw time domain data on the component of acceleration resulting from the motion of the subject's body. Gyroscopes were the source of this data. Jerk was determined by taking the time derivative of acceleration for the associated variable. This is the three dimensional magnitude of the associated variable.  

*  frequency_body_accelerometer_standard_deviation_x  <br>  This variable was derived from frequency domain data generated by applying Fast Fourier Transforms to the time domain data on the component of acceleration resulting from the motion of the subject's body. Accelerometers were the source of this data.  

*  frequency_body_accelerometer_standard_deviation_y  <br>  This variable was derived from frequency domain data generated by applying Fast Fourier Transforms to the time domain data on the component of acceleration resulting from the motion of the subject's body. Accelerometers were the source of this data.  

*  frequency_body_accelerometer_standard_deviation_z  <br>  This variable was derived from frequency domain data generated by applying Fast Fourier Transforms to the time domain data on the component of acceleration resulting from the motion of the subject's body. Accelerometers were the source of this data.  

*  frequency_body_accelerometer_jerk_standard_deviation_x  <br>  This variable was derived from frequency domain data generated by applying Fast Fourier Transforms to the time domain data on the component of acceleration resulting from the motion of the subject's body. Accelerometers were the source of this data. Jerk was determined by taking the time derivative of acceleration for the associated variable.  

*  frequency_body_accelerometer_jerk_standard_deviation_y  <br>  This variable was derived from frequency domain data generated by applying Fast Fourier Transforms to the time domain data on the component of acceleration resulting from the motion of the subject's body. Accelerometers were the source of this data. Jerk was determined by taking the time derivative of acceleration for the associated variable.  

*  frequency_body_accelerometer_jerk_standard_deviation_z  <br>  This variable was derived from frequency domain data generated by applying Fast Fourier Transforms to the time domain data on the component of acceleration resulting from the motion of the subject's body. Accelerometers were the source of this data. Jerk was determined by taking the time derivative of acceleration for the associated variable.  

*  frequency_body_gyroscope_standard_deviation_x  <br>  This variable was derived from frequency domain data generated by applying Fast Fourier Transforms to the time domain data on the component of acceleration resulting from the motion of the subject's body. Gyroscopes were the source of this data.  

*  frequency_body_gyroscope_standard_deviation_y  <br>  This variable was derived from frequency domain data generated by applying Fast Fourier Transforms to the time domain data on the component of acceleration resulting from the motion of the subject's body. Gyroscopes were the source of this data.  

*  frequency_body_gyroscope_standard_deviation_z  <br>  This variable was derived from frequency domain data generated by applying Fast Fourier Transforms to the time domain data on the component of acceleration resulting from the motion of the subject's body. Gyroscopes were the source of this data.  

*  frequency_body_accelerometer_magnitude_standard_deviation  <br>  This variable was derived from frequency domain data generated by applying Fast Fourier Transforms to the time domain data on the component of acceleration resulting from the motion of the subject's body. Accelerometers were the source of this data. This is the three dimensional magnitude of the associated variable.  

*  frequency_body_accelerometer_jerk_magnitude_standard_deviation  <br>  This variable was derived from frequency domain data generated by applying Fast Fourier Transforms to the time domain data on the component of acceleration resulting from the motion of the subject's body. Accelerometers were the source of this data. Jerk was determined by taking the time derivative of acceleration for the associated variable. This is the three dimensional magnitude of the associated variable.  

*  frequency_body_gyroscope_magnitude_standard_deviation  <br>  This variable was derived from frequency domain data generated by applying Fast Fourier Transforms to the time domain data on the component of acceleration resulting from the motion of the subject's body. Gyroscopes were the source of this data. This is the three dimensional magnitude of the associated variable.  

*  frequency_body_gyroscope_jerk_magnitude_standard_deviation  <br>  This variable was derived from frequency domain data generated by applying Fast Fourier Transforms to the time domain data on the component of acceleration resulting from the motion of the subject's body. Gyroscopes were the source of this data. Jerk was determined by taking the time derivative of acceleration for the associated variable. This is the three dimensional magnitude of the associated variable.  

