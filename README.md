***************************************************************************************
***************************************************************************************

Matlab demo code for Gaussian Mixture Model Embedding

This code is for academic purpose only. Not for commercial/industrial activities.

***************************************************************************************
***************************************************************************************


I. NOTICE
=================

The source code includes library for other hashing methods including: Binary Autoencoder (ba),
Iterative Quantization (itq), Spectral Hashing (sh), Spherical Hashing (sph), and K-mean
Hashing (kmh). These libraries are slightly modified but still keeping the  algorithm and
recommended parameters from original papers.


II. DATASET
=================

The folder './dataset' contains the mat files used for this demo code. If the './dataset'  
folder is empty, please download the dataset from   
https://www.mediafire.com/folder/imkwh9v38xr84/Gemb_release and place them in this folder.
	+ <dataset>_<feature_type>_train.mat: The files are used for trainning and database.
		- train_features (# samples x feature_dim): Extracted features of training images
		- train_labels   (# samples x 1): 	    Semantic labels of training images
	+ <dataset>_<feature_type>_test.mat:  The files are used for testing.
		- test_features (# samples x feature_dim):  Extracted features of testing images
		- test_labels   (# samples x 1): 	    Semantic labels of testing images
	Where:
	+ <dataset>: cifar10/mnist/labelme
	+ <feature_type>: gist/vggfc7	(for mnist dataset, only gist feature is available)

III. USAGE
=================

Modify the parameters which are defined and explained in 'main_demo.m' properly then run.

