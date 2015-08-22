# CodeBook
## Variable names were constructed from several keywords with specific meanings.
* time: the variable was originally determined using from raw time domain data.
* frequency: the variable was originally determined using data that had undergone a Fast Fourier Transform, i.e. frequency domain data.
* body: the acceleration data for the subject's body movement was used.
* gravity: the acceleration data for gravity was used.
* accelerometer: source data was acquired using an accelerometer.
* gyroscope: source data was acquired using a gyroscope.
* mean: this variable was determined by taking the mean of the data.
* standard_deviation: this variable was determined by taking the standard deviation of the data.
* weighted_mean: the variable determined by taking the weighted mean of the frequency components.
* jerk: the variable was determined as the time derivative of the acceleration data.
* x, y, and z: 3-axial signals in the x, y, and z directions.

## Description of Each Variable
*  subject_id 
 A number identifying test subjects. Ranges from 1 to 30.  

*  activity 
 The position the test subject was in for a given run.  

*  time_body_accelerometer_mean_x 
 This variable was originally derived from the raw time domain data on the component of acceleration resulting from the motion of the subject's body. Accelerometers were the source of this data.  

*  time_body_accelerometer_mean_y 
 This variable was originally derived from the raw time domain data on the component of acceleration resulting from the motion of the subject's body. Accelerometers were the source of this data.  

*  time_body_accelerometer_mean_z 
 This variable was originally derived from the raw time domain data on the component of acceleration resulting from the motion of the subject's body. Accelerometers were the source of this data.  

*  time_gravity_accelerometer_mean_x 
 This variable was originally derived from the raw time domain data on the component of acceleration resulting from gravity. Accelerometers were the source of this data.  

*  time_gravity_accelerometer_mean_y 
 This variable was originally derived from the raw time domain data on the component of acceleration resulting from gravity. Accelerometers were the source of this data.  

*  time_gravity_accelerometer_mean_z 
 This variable was originally derived from the raw time domain data on the component of acceleration resulting from gravity. Accelerometers were the source of this data.  

*  time_body_accelerometer_jerk_mean_x 
 This variable was originally derived from the raw time domain data on the component of acceleration resulting from the motion of the subject's body. Accelerometers were the source of this data. Jerk was determined by taking the time derivative of acceleration for the associated variable.  

*  time_body_accelerometer_jerk_mean_y 
 This variable was originally derived from the raw time domain data on the component of acceleration resulting from the motion of the subject's body. Accelerometers were the source of this data. Jerk was determined by taking the time derivative of acceleration for the associated variable.  

*  time_body_accelerometer_jerk_mean_z 
 This variable was originally derived from the raw time domain data on the component of acceleration resulting from the motion of the subject's body. Accelerometers were the source of this data. Jerk was determined by taking the time derivative of acceleration for the associated variable.  

*  time_body_gyroscope_mean_x 
 This variable was originally derived from the raw time domain data on the component of acceleration resulting from the motion of the subject's body. Gyroscopes were the source of this data.  

*  time_body_gyroscope_mean_y 
 This variable was originally derived from the raw time domain data on the component of acceleration resulting from the motion of the subject's body. Gyroscopes were the source of this data.  

*  time_body_gyroscope_mean_z 
 This variable was originally derived from the raw time domain data on the component of acceleration resulting from the motion of the subject's body. Gyroscopes were the source of this data.  

*  time_body_gyroscope_jerk_mean_x 
 This variable was originally derived from the raw time domain data on the component of acceleration resulting from the motion of the subject's body. Gyroscopes were the source of this data. Jerk was determined by taking the time derivative of acceleration for the associated variable.  

*  time_body_gyroscope_jerk_mean_y 
 This variable was originally derived from the raw time domain data on the component of acceleration resulting from the motion of the subject's body. Gyroscopes were the source of this data. Jerk was determined by taking the time derivative of acceleration for the associated variable.  

*  time_body_gyroscope_jerk_mean_z 
 This variable was originally derived from the raw time domain data on the component of acceleration resulting from the motion of the subject's body. Gyroscopes were the source of this data. Jerk was determined by taking the time derivative of acceleration for the associated variable.  

*  time_body_accelerometer_magnitude_mean 
 This variable was originally derived from the raw time domain data on the component of acceleration resulting from the motion of the subject's body. Accelerometers were the source of this data. This is the three dimensional magnitude of the associated variable.  

*  time_gravity_accelerometer_magnitude_mean 
 This variable was originally derived from the raw time domain data on the component of acceleration resulting from gravity. Accelerometers were the source of this data. This is the three dimensional magnitude of the associated variable.  

*  time_body_accelerometer_jerk_magnitude_mean 
 This variable was originally derived from the raw time domain data on the component of acceleration resulting from the motion of the subject's body. Accelerometers were the source of this data. Jerk was determined by taking the time derivative of acceleration for the associated variable. This is the three dimensional magnitude of the associated variable.  

*  time_body_gyroscope_magnitude_mean 
 This variable was originally derived from the raw time domain data on the component of acceleration resulting from the motion of the subject's body. Gyroscopes were the source of this data. This is the three dimensional magnitude of the associated variable.  

*  time_body_gyroscope_jerk_magnitude_mean 
 This variable was originally derived from the raw time domain data on the component of acceleration resulting from the motion of the subject's body. Gyroscopes were the source of this data. Jerk was determined by taking the time derivative of acceleration for the associated variable. This is the three dimensional magnitude of the associated variable.  

*  frequency_body_accelerometer_mean_x 
 This variable was derived from frequency domain data generated by applying Fast Fourier Transforms to the time domain data on the component of acceleration resulting from the motion of the subject's body. Accelerometers were the source of this data.  

*  frequency_body_accelerometer_mean_y 
 This variable was derived from frequency domain data generated by applying Fast Fourier Transforms to the time domain data on the component of acceleration resulting from the motion of the subject's body. Accelerometers were the source of this data.  

*  frequency_body_accelerometer_mean_z 
 This variable was derived from frequency domain data generated by applying Fast Fourier Transforms to the time domain data on the component of acceleration resulting from the motion of the subject's body. Accelerometers were the source of this data.  

*  frequency_body_accelerometer_weighted_mean_x 
 This variable was derived from frequency domain data generated by applying Fast Fourier Transforms to the time domain data on the component of acceleration resulting from the motion of the subject's body. Accelerometers were the source of this data. Mean frequency determined by taking the weighted average of the frequency components.  

*  frequency_body_accelerometer_weighted_mean_y 
 This variable was derived from frequency domain data generated by applying Fast Fourier Transforms to the time domain data on the component of acceleration resulting from the motion of the subject's body. Accelerometers were the source of this data. Mean frequency determined by taking the weighted average of the frequency components.  

*  frequency_body_accelerometer_weighted_mean_z 
 This variable was derived from frequency domain data generated by applying Fast Fourier Transforms to the time domain data on the component of acceleration resulting from the motion of the subject's body. Accelerometers were the source of this data. Mean frequency determined by taking the weighted average of the frequency components.  

*  frequency_body_accelerometer_jerk_mean_x 
 This variable was derived from frequency domain data generated by applying Fast Fourier Transforms to the time domain data on the component of acceleration resulting from the motion of the subject's body. Accelerometers were the source of this data. Jerk was determined by taking the time derivative of acceleration for the associated variable.  

*  frequency_body_accelerometer_jerk_mean_y 
 This variable was derived from frequency domain data generated by applying Fast Fourier Transforms to the time domain data on the component of acceleration resulting from the motion of the subject's body. Accelerometers were the source of this data. Jerk was determined by taking the time derivative of acceleration for the associated variable.  

*  frequency_body_accelerometer_jerk_mean_z 
 This variable was derived from frequency domain data generated by applying Fast Fourier Transforms to the time domain data on the component of acceleration resulting from the motion of the subject's body. Accelerometers were the source of this data. Jerk was determined by taking the time derivative of acceleration for the associated variable.  

*  frequency_body_accelerometer_jerk_weighted_mean_x 
 This variable was derived from frequency domain data generated by applying Fast Fourier Transforms to the time domain data on the component of acceleration resulting from the motion of the subject's body. Accelerometers were the source of this data. Jerk was determined by taking the time derivative of acceleration for the associated variable. Mean frequency determined by taking the weighted average of the frequency components.  

*  frequency_body_accelerometer_jerk_weighted_mean_y 
 This variable was derived from frequency domain data generated by applying Fast Fourier Transforms to the time domain data on the component of acceleration resulting from the motion of the subject's body. Accelerometers were the source of this data. Jerk was determined by taking the time derivative of acceleration for the associated variable. Mean frequency determined by taking the weighted average of the frequency components.  

*  frequency_body_accelerometer_jerk_weighted_mean_z 
 This variable was derived from frequency domain data generated by applying Fast Fourier Transforms to the time domain data on the component of acceleration resulting from the motion of the subject's body. Accelerometers were the source of this data. Jerk was determined by taking the time derivative of acceleration for the associated variable. Mean frequency determined by taking the weighted average of the frequency components.  

*  frequency_body_gyroscope_mean_x 
 This variable was derived from frequency domain data generated by applying Fast Fourier Transforms to the time domain data on the component of acceleration resulting from the motion of the subject's body. Gyroscopes were the source of this data.  

*  frequency_body_gyroscope_mean_y 
 This variable was derived from frequency domain data generated by applying Fast Fourier Transforms to the time domain data on the component of acceleration resulting from the motion of the subject's body. Gyroscopes were the source of this data.  

*  frequency_body_gyroscope_mean_z 
 This variable was derived from frequency domain data generated by applying Fast Fourier Transforms to the time domain data on the component of acceleration resulting from the motion of the subject's body. Gyroscopes were the source of this data.  

*  frequency_body_gyroscope_weighted_mean_x 
 This variable was derived from frequency domain data generated by applying Fast Fourier Transforms to the time domain data on the component of acceleration resulting from the motion of the subject's body. Gyroscopes were the source of this data. Mean frequency determined by taking the weighted average of the frequency components.  

*  frequency_body_gyroscope_weighted_mean_y 
 This variable was derived from frequency domain data generated by applying Fast Fourier Transforms to the time domain data on the component of acceleration resulting from the motion of the subject's body. Gyroscopes were the source of this data. Mean frequency determined by taking the weighted average of the frequency components.  

*  frequency_body_gyroscope_weighted_mean_z 
 This variable was derived from frequency domain data generated by applying Fast Fourier Transforms to the time domain data on the component of acceleration resulting from the motion of the subject's body. Gyroscopes were the source of this data. Mean frequency determined by taking the weighted average of the frequency components.  

*  frequency_body_accelerometer_magnitude_mean 
 This variable was derived from frequency domain data generated by applying Fast Fourier Transforms to the time domain data on the component of acceleration resulting from the motion of the subject's body. Accelerometers were the source of this data. This is the three dimensional magnitude of the associated variable.  

*  frequency_body_accelerometer_magnitude_weighted_mean 
 This variable was derived from frequency domain data generated by applying Fast Fourier Transforms to the time domain data on the component of acceleration resulting from the motion of the subject's body. Accelerometers were the source of this data. This is the three dimensional magnitude of the associated variable. Mean frequency determined by taking the weighted average of the frequency components.  

*  frequency_body_accelerometer_jerk_magnitude_mean 
 This variable was derived from frequency domain data generated by applying Fast Fourier Transforms to the time domain data on the component of acceleration resulting from the motion of the subject's body. Accelerometers were the source of this data. Jerk was determined by taking the time derivative of acceleration for the associated variable. This is the three dimensional magnitude of the associated variable.  

*  frequency_body_accelerometer_jerk_magnitude_weighted_mean 
 This variable was derived from frequency domain data generated by applying Fast Fourier Transforms to the time domain data on the component of acceleration resulting from the motion of the subject's body. Accelerometers were the source of this data. Jerk was determined by taking the time derivative of acceleration for the associated variable. This is the three dimensional magnitude of the associated variable. Mean frequency determined by taking the weighted average of the frequency components.  

*  frequency_body_gyroscope_magnitude_mean 
 This variable was derived from frequency domain data generated by applying Fast Fourier Transforms to the time domain data on the component of acceleration resulting from the motion of the subject's body. Gyroscopes were the source of this data. This is the three dimensional magnitude of the associated variable.  

*  frequency_body_gyroscope_magnitude_weighted_mean 
 This variable was derived from frequency domain data generated by applying Fast Fourier Transforms to the time domain data on the component of acceleration resulting from the motion of the subject's body. Gyroscopes were the source of this data. This is the three dimensional magnitude of the associated variable. Mean frequency determined by taking the weighted average of the frequency components.  

*  frequency_body_gyroscope_jerk_magnitude_mean 
 This variable was derived from frequency domain data generated by applying Fast Fourier Transforms to the time domain data on the component of acceleration resulting from the motion of the subject's body. Gyroscopes were the source of this data. Jerk was determined by taking the time derivative of acceleration for the associated variable. This is the three dimensional magnitude of the associated variable.  

*  frequency_body_gyroscope_jerk_magnitude_weighted_mean 
 This variable was derived from frequency domain data generated by applying Fast Fourier Transforms to the time domain data on the component of acceleration resulting from the motion of the subject's body. Gyroscopes were the source of this data. Jerk was determined by taking the time derivative of acceleration for the associated variable. This is the three dimensional magnitude of the associated variable. Mean frequency determined by taking the weighted average of the frequency components.  

*  time_body_accelerometer_standard_deviation_x 
 This variable was originally derived from the raw time domain data on the component of acceleration resulting from the motion of the subject's body. Accelerometers were the source of this data.  

*  time_body_accelerometer_standard_deviation_y 
 This variable was originally derived from the raw time domain data on the component of acceleration resulting from the motion of the subject's body. Accelerometers were the source of this data.  

*  time_body_accelerometer_standard_deviation_z 
 This variable was originally derived from the raw time domain data on the component of acceleration resulting from the motion of the subject's body. Accelerometers were the source of this data.  

*  time_gravity_accelerometer_standard_deviation_x 
 This variable was originally derived from the raw time domain data on the component of acceleration resulting from gravity. Accelerometers were the source of this data.  

*  time_gravity_accelerometer_standard_deviation_y 
 This variable was originally derived from the raw time domain data on the component of acceleration resulting from gravity. Accelerometers were the source of this data.  

*  time_gravity_accelerometer_standard_deviation_z 
 This variable was originally derived from the raw time domain data on the component of acceleration resulting from gravity. Accelerometers were the source of this data.  

*  time_body_accelerometer_jerk_standard_deviation_x 
 This variable was originally derived from the raw time domain data on the component of acceleration resulting from the motion of the subject's body. Accelerometers were the source of this data. Jerk was determined by taking the time derivative of acceleration for the associated variable.  

*  time_body_accelerometer_jerk_standard_deviation_y 
 This variable was originally derived from the raw time domain data on the component of acceleration resulting from the motion of the subject's body. Accelerometers were the source of this data. Jerk was determined by taking the time derivative of acceleration for the associated variable.  

*  time_body_accelerometer_jerk_standard_deviation_z 
 This variable was originally derived from the raw time domain data on the component of acceleration resulting from the motion of the subject's body. Accelerometers were the source of this data. Jerk was determined by taking the time derivative of acceleration for the associated variable.  

*  time_body_gyroscope_standard_deviation_x 
 This variable was originally derived from the raw time domain data on the component of acceleration resulting from the motion of the subject's body. Gyroscopes were the source of this data.  

*  time_body_gyroscope_standard_deviation_y 
 This variable was originally derived from the raw time domain data on the component of acceleration resulting from the motion of the subject's body. Gyroscopes were the source of this data.  

*  time_body_gyroscope_standard_deviation_z 
 This variable was originally derived from the raw time domain data on the component of acceleration resulting from the motion of the subject's body. Gyroscopes were the source of this data.  

*  time_body_gyroscope_jerk_standard_deviation_x 
 This variable was originally derived from the raw time domain data on the component of acceleration resulting from the motion of the subject's body. Gyroscopes were the source of this data. Jerk was determined by taking the time derivative of acceleration for the associated variable.  

*  time_body_gyroscope_jerk_standard_deviation_y 
 This variable was originally derived from the raw time domain data on the component of acceleration resulting from the motion of the subject's body. Gyroscopes were the source of this data. Jerk was determined by taking the time derivative of acceleration for the associated variable.  

*  time_body_gyroscope_jerk_standard_deviation_z 
 This variable was originally derived from the raw time domain data on the component of acceleration resulting from the motion of the subject's body. Gyroscopes were the source of this data. Jerk was determined by taking the time derivative of acceleration for the associated variable.  

*  time_body_accelerometer_magnitude_standard_deviation 
 This variable was originally derived from the raw time domain data on the component of acceleration resulting from the motion of the subject's body. Accelerometers were the source of this data. This is the three dimensional magnitude of the associated variable.  

*  time_gravity_accelerometer_magnitude_standard_deviation 
 This variable was originally derived from the raw time domain data on the component of acceleration resulting from gravity. Accelerometers were the source of this data. This is the three dimensional magnitude of the associated variable.  

*  time_body_accelerometer_jerk_magnitude_standard_deviation 
 This variable was originally derived from the raw time domain data on the component of acceleration resulting from the motion of the subject's body. Accelerometers were the source of this data. Jerk was determined by taking the time derivative of acceleration for the associated variable. This is the three dimensional magnitude of the associated variable.  

*  time_body_gyroscope_magnitude_standard_deviation 
 This variable was originally derived from the raw time domain data on the component of acceleration resulting from the motion of the subject's body. Gyroscopes were the source of this data. This is the three dimensional magnitude of the associated variable.  

*  time_body_gyroscope_jerk_magnitude_standard_deviation 
 This variable was originally derived from the raw time domain data on the component of acceleration resulting from the motion of the subject's body. Gyroscopes were the source of this data. Jerk was determined by taking the time derivative of acceleration for the associated variable. This is the three dimensional magnitude of the associated variable.  

*  frequency_body_accelerometer_standard_deviation_x 
 This variable was derived from frequency domain data generated by applying Fast Fourier Transforms to the time domain data on the component of acceleration resulting from the motion of the subject's body. Accelerometers were the source of this data.  

*  frequency_body_accelerometer_standard_deviation_y 
 This variable was derived from frequency domain data generated by applying Fast Fourier Transforms to the time domain data on the component of acceleration resulting from the motion of the subject's body. Accelerometers were the source of this data.  

*  frequency_body_accelerometer_standard_deviation_z 
 This variable was derived from frequency domain data generated by applying Fast Fourier Transforms to the time domain data on the component of acceleration resulting from the motion of the subject's body. Accelerometers were the source of this data.  

*  frequency_body_accelerometer_jerk_standard_deviation_x 
 This variable was derived from frequency domain data generated by applying Fast Fourier Transforms to the time domain data on the component of acceleration resulting from the motion of the subject's body. Accelerometers were the source of this data. Jerk was determined by taking the time derivative of acceleration for the associated variable.  

*  frequency_body_accelerometer_jerk_standard_deviation_y 
 This variable was derived from frequency domain data generated by applying Fast Fourier Transforms to the time domain data on the component of acceleration resulting from the motion of the subject's body. Accelerometers were the source of this data. Jerk was determined by taking the time derivative of acceleration for the associated variable.  

*  frequency_body_accelerometer_jerk_standard_deviation_z 
 This variable was derived from frequency domain data generated by applying Fast Fourier Transforms to the time domain data on the component of acceleration resulting from the motion of the subject's body. Accelerometers were the source of this data. Jerk was determined by taking the time derivative of acceleration for the associated variable.  

*  frequency_body_gyroscope_standard_deviation_x 
 This variable was derived from frequency domain data generated by applying Fast Fourier Transforms to the time domain data on the component of acceleration resulting from the motion of the subject's body. Gyroscopes were the source of this data.  

*  frequency_body_gyroscope_standard_deviation_y 
 This variable was derived from frequency domain data generated by applying Fast Fourier Transforms to the time domain data on the component of acceleration resulting from the motion of the subject's body. Gyroscopes were the source of this data.  

*  frequency_body_gyroscope_standard_deviation_z 
 This variable was derived from frequency domain data generated by applying Fast Fourier Transforms to the time domain data on the component of acceleration resulting from the motion of the subject's body. Gyroscopes were the source of this data.  

*  frequency_body_accelerometer_magnitude_standard_deviation 
 This variable was derived from frequency domain data generated by applying Fast Fourier Transforms to the time domain data on the component of acceleration resulting from the motion of the subject's body. Accelerometers were the source of this data. This is the three dimensional magnitude of the associated variable.  

*  frequency_body_accelerometer_jerk_magnitude_standard_deviation 
 This variable was derived from frequency domain data generated by applying Fast Fourier Transforms to the time domain data on the component of acceleration resulting from the motion of the subject's body. Accelerometers were the source of this data. Jerk was determined by taking the time derivative of acceleration for the associated variable. This is the three dimensional magnitude of the associated variable.  

*  frequency_body_gyroscope_magnitude_standard_deviation 
 This variable was derived from frequency domain data generated by applying Fast Fourier Transforms to the time domain data on the component of acceleration resulting from the motion of the subject's body. Gyroscopes were the source of this data. This is the three dimensional magnitude of the associated variable.  

*  frequency_body_gyroscope_jerk_magnitude_standard_deviation 
 This variable was derived from frequency domain data generated by applying Fast Fourier Transforms to the time domain data on the component of acceleration resulting from the motion of the subject's body. Gyroscopes were the source of this data. Jerk was determined by taking the time derivative of acceleration for the associated variable. This is the three dimensional magnitude of the associated variable.  

