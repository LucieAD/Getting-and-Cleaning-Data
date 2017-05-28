Human Activity Recognition Using Smartphones - subset of data
==================================================================
This dataset is a subset of the data produced by Reyes-Ortiz et al.[1]. The original dataset can be found here:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.

For more information about the original dataset contact: activityrecognition@smartlab.ws 

The experiments were carried out with a group of 30 volunteers aged 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments were video-recorded to activity labels assigned manually. The obtained dataset was randomly partitioned into two sets; 70% of data was used to generate a training dataset and 305 to generate a test dataset. Train and test dataset are separate in the original version of the dataset, but are combined in this version of the dataset.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' of the original dataset for more details.

Mean and standard deviation was calculated for each of the above variables and the mean of these values was calculated for each subject for each activity. (There should be a sentence about units here,but I could’t find anything in the original dataset. I suspect acceleration might be m/s^2, velocity m/s and all Fourier-transformed variables might be unitless.)

Records provided
======================================

- An identifier of the subject who carried out the experiment
- An identifier of the activity carried out
- A set of 66 variables including the mean of triaxial acceleration from the accelerometer (total acceleration), estimated body acceleration, and triaxial angular velocity from the gyroscope as well as the mean of their standard deviations. A detailed description of the variables can be found in the codebook

The dataset includes the following files:
=========================================

- ‘README.md’

- ‘CodeBook.md’: Markdown file containing a description of all variables

- ‘run_analysis.R’: Script which replicates the analysis steps that were taken to transform the original files into the datset2 file

- ‘dataset2.txt’: Textfile containing the data: 2 ID columns, subject and activity, and 66 variable columns as described in the codebook


License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
