Human Activity Recognition Using Smartphones - subset of data
==================================================================
This dataset is a subset of the data produced by Reyes-Ortiz et al.[1]. The original dataset can be found here:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.

For more information about the original dataset contact: activityrecognition@smartlab.ws 


Human Activity Recognition Using Smartphones Dataset
Version 1.0
------------------------------------------------------------------
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Universit‡ degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
------------------------------------------------------------------

The experiments were carried out with a group of 30 volunteers aged 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments were video-recorded to activity labels assigned manually. The obtained dataset was randomly partitioned into two sets; 70% of data was used to generate a training dataset and 305 to generate a test dataset. Train and test dataset are separate in the original version of the dataset, but are combined in this version of the dataset.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' of the original dataset for more details. Variables are normalized and bounded within [-1,1].

The following procedures were performed on the original data to obtain datasets 1 and dataset2:

1. Merging of training and test datasets to create one dataset.
2. Extraction of measurements on mean and standard deviation for each measurement
3. Replacement of activity IDs with names provided in the activities file
4. Labelling variables with descriptive names (dataset1) 
5. Creation of a second independent dataset containing the mean of each variable in dataset1 for each subject and activity (dataset2)

Records provided for final output (dataset2)
============================================

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
Use of the original dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

The original dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.
