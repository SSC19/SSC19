# SSC19 Case Study
## Titile
Counting Cells in Microscopic Images
## Datasource 
[BBBC005v1](https://data.broadinstitute.org/bbbc/BBBC005/) from the Broad Bioimage Benchmark Collection [Ljosa et al., Nature Methods, 2012].
## Organizer
Dr. Pingzhao Hu, Department of Biochemistry and Medical Genetics, University of Manitoba
## Background
The emerge of high-throughput microscopy modality triggers the “big data” problem by introducing huge numbers of digital images even in a single molecular biology experiment. It is no longer possible to analyze the microscopic images manually even for estimating a simple feature like cell count. Therefore, the needs for automated cell counting become crucial. 

BBBC005v1 is a simulated image dataset. It provides in- and out-of-focus synthetic images. These images were simulated for a given cell count. Gaussian filters were applied to the images to simulate the focus blur. Each image is in 8-bit TIF format and the size is 696 x 520 pixels. The nuclei and cell body areas were matched to the average nuclei and cell areas from a real microscopic dataset.

Three of 16 blur levels (F1, F23, F48) of the BBBC005v1 dataset were selected as our raw image data for this case study, which ended up 3,600 images. Then these 3,600 images were randomly assigned to training set (2,400) and testing set (1,200). 

## Research Question
This case aims to encourage participants study on how to process and analyse image data. Participants are asked to use provided images to predict the cell counts. 

## How to download?
Open the SSC19 github repository [here](https://github.com/SSC19/SSC19).

Click the green botton on the upright of the webpage.![download botton](https://github.com/qianliu1219/SSC19/blob/master/other/download_botton.png) 



# train.zip
Training set contains 2,400 synthetic fluorescent cell microscopy images which were randomly selected from 3 levels of blur (*F1,F23,F48*) and 2 kinds of stain (*w1,w2*). 
- 400 from each of the folllowing 6 subsets, *F1_w1,F1_w2,F23_w1,F23_w2,F48_w1,F48_w2*.
- See the *train_label.csv* for further description of the names.

# test.zip
Testing set contains 1,200 synthetic fluorescent cell microscopy images randomly selected from 3 levels of blur (*F1,F23,F48*) and 2 kinds of stain (*w1,w2*). 
- 200 from each of the folllowing 6 subsets, *F1_w1,F1_w2, F23_w1,F23_w2,F48_w1,F48_w2*.
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
# test_label.csv
1,200 rows for 1,200 images in testing set, 4 colunms for 4 kinds of information.
- ***image_name***: names of 2,400 synthetic fluorescent cell microscopy images in training set.
    
    > *A01_F1_s01_w2.TIF*
    > - *A01*: The simulated 384-well plate format. Rows are nameed A-P and columns 1-24.
    > - *F1*: The amount of focus blur applied (1, 23, 48).
    > - *s01*: Number of samples(1-25).
    > - *w1*: 1 = cell body stain, 2 = nuclei stain.
- ***cell_count***: from 1 to 100.
- ***blur_level***: The amount of focus blur applied (1, 23, 48).
- ***stain***: 1 = cell body stain, 2 = nuclei stain.
# code.R
R code for reading the images, ground truth masks, and their label information.
- Please change the directory to your working path.
# code.py
Python code for reading the images, ground truth masks, and their label information.
- Please change the directory to your working path.

