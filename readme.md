# train.zip
Training set contains 2,400 synthetic fluorescent cell microscopy images which were randomly selected from 3 levels of blur (*F1,F23,F48*) and 2 kinds of stain (*w1,w2*). 400 from each of the folllowing 6 subsets, *F1_w1,F1_w2,F23_w1,F23_w2,F48_w1,F48_w2*.
- See the *train_label.csv* for further description of the names.

# test.zip
Testing set contains 1,200 synthetic fluorescent cell microscopy images randomly selected from 3 levels of blur (*F1,F23,F48*) and 2 kinds of stain (*w1,w2*). 200 from each of the folllowing 6 subsets, *F1_w1,F1_w2, F23_w1,F23_w2,F48_w1,F48_w2*.
- See the *test_label.csv* for further description of the names.

# train_label.csv
2,400 rows for 2,400 images in training set, 4 colunms for 4 kinds of information.
- ***image_name***: names of 2,400 synthetic fluorescent cell microscopy images in training set.
    
    > *A01_C1_F1_s01_w1.TIF*
    > - *A01*: The simulated 384-well plate format. Rows are nameed A-P and columns 1-24.
    > - *C1*: The number of cells simulated in the image (1-100).
    > - *F1*: The amount of focus blur applied (1, 23, 48).
    > - *s01*: Number of samples(1-25).
    > - *w1*: 1 = cell body stain, 2 = nuclei stain.

 - ***cell_count***: from 1 to 100.
 - ***blur_level***: The amount of focus blur applied (1, 23, 48).
 - ***stain***: 1 = cell body stain, 2 = nuclei stain.
# code.R
R code for reading the images, ground truth masks, and their label information.
# code.py
Python code for reading the images, ground truth masks, and their label information.
# BBBC005v1.zip
The raw image set used in this case study is [BBBC005v1](https://data.broadinstitute.org/bbbc/BBBC005/) from the Broad Bioimage Benchmark Collection [Ljosa et al., Nature Methods, 2012].
### image
3,600 synthetic fluorescent	cell microscopy images.
- images are in 3 flur levels, each level has 1,200.

- See the *label_file.csv* for further description of the names.
### ground_truth_mask
1,200 synthetic fluorescent cell microscopy images with no blur (*F1*). Can be used as segmentation masks.
- Pixels that belong to the foreground (i.e., the cells) are white, and pixels that belong to the background are black.
- See the *label_file.csv* for further description of the names.
### label_file.csv
2,400 rows for 2,400 images, 5 colunms for 5 kinds of information.
- ***image_name***: names of 2,400 synthetic fluorescent cell microscopy images.

    > *SIMCEPImages_H01_C1_F23_s01_w1*
    > - *H01*: The simulated 384-well plate format. Rows are nameed A-P and columns 1-24. 
    > - *C1*: The number of cells simulated in the image (1-100).
    > - *F23*: The amount of focus blur applied (23, 48).
    > - *s01*: Number of samples(1-25). 
    > - *w1*: 1 = cell body stain, 2 = nuclei stain.

- ***ground_truth_name***: names of 1,200 ground truth masks (segmentation images). One ground truth mask corresponding to two synthetic fluorescent cell microscopy images, because of two flur levels.
- ***cell_count***: from 1 to 100.
- ***blur_level***: The amount of focus blur applied (23, 48).
- ***stain***: 1 = cell body stain, 2 = nuclei stain.
