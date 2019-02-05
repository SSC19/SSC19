# SSC19 Case Study
## Tittle
Counting Cells from Microscopic Images
## Data Source 
The image set [BBBC005v1](https://data.broadinstitute.org/bbbc/BBBC005/) is from the Broad Bioimage Benchmark Collection [Ljosa et al., Nature Methods, 2012].
## Organizer
Dr. Pingzhao Hu, Qian Liu,Department of Biochemistry and Medical Genetics, University of Manitoba; Dr. Kathryn Morrison, Precision Analytics Inc., Montreal.
## Background
The emerging of high-throughput microscopic imaging modality triggers the “big data” problem even in a single molecular biology experiment. It is no longer possible to manually analyze the microscopic images even for estimating a simple feature like cell count. Therefore, the needs for automated cell counting become crucial.

BBBC005v1 is a simulated microscopic image dataset. Each of the images is in an 8-bit TIF format with size 696 x 520 pixels. It provides in-focus (clear) and out-of-focus (blur) synthetic images. Each of these images was simulated for a given cell count. Gaussian filters were applied to simulate the images at different blur levels. The nuclei and cell body areas of the images were matched to the average nuclei and cell areas from a real microscopic dataset. 

Images with three of the 16 blur levels (F1, F23, F48) of the BBBC005v1 dataset were selected as our raw image data for this case study. Both images with cell body stain and nuclei stain are included. This includes a total of 3,600 microscopic images. 

## Research Question
Students are invited to develop statistical and computational methods to estimate the cell counts in the images.

## Competition Strategy
These 3,600 images were randomly assigned to a training set with 2,400 images and a test set with 1,200 images. The true cell count for each of the 2,400 images in the training set is provided while the true cell count for each of the 1,200 images in the test set is blinded. Students are required to develop statistical and computational methods to build a prediction model (s) based on the training set, which will be applied to predict the cell counts in the test set.
Students are required to submit their predicted cell counts for the 1,200 images in the test set to Dr. Pingzhao Hu at pingzhao.hu@umanitoba.ca **before or at May 20, 2019**. The performance of the prediction results will be evaluated based on the root mean square error (RMSE):

<img src="https://raw.githubusercontent.com/qianliu1219/SSC19/master/other/formula.png" width="400" height="66" /> 

Here, c = [x1, x2, …, xn] represent the true values of the cell counts for the 1,200 images in the test set, and ĉ = [y1, y2, …, yn] represent the predicted cell counts for the 1,200 images.

Each team is also required to make a poster presentation in the SSC 2019 Case Studies Competition. The model prediction will take 60% and poster presentation will take 40% of the total mark of a team. The final score will be marked as 0.6/rank of the model predictions + 0.4/rank of the poster presentations.

## Data Access
The dataset has been provided in a [SSC19 github repository](https://github.com/SSC19/SSC19). 
Please email the organizer pingzhao.hu@umanitoba.ca if you have any questions about the data set.
>  Organizer:  Dr. Pingzhao Hu
>- Department of Biochemistry and Medical Genetics/Department of Computer Science, University of Manitoba
>- Division of Biostatistics, University of Toronto
>- E-mail: pingzhao.hu@umanitoba.ca

## How to download the data sets
Open the SSC19 github repository [here](https://github.com/SSC19/SSC19).

Click the green botton **Clone or download** on the top right corner of the webpage.Then click **Download ZIP**.![download botton](https://raw.githubusercontent.com/qianliu1219/SSC19/master/other/download_botton_new.png)

The **SSC19-master.zip** file will be downloaded in you Download directory, which includes below folders and files:

### train folder
Training set includes 2,400 images, which were randomly selected from 3 levels of blur (*F1, F23, F48*) and two types of stains (*w1-cell body stain, w2-nuclei stain*). There are 400 images in each of the six combinations of blur levels and types of stains: *F1_w1,F1_w2,F23_w1,F23_w2,F48_w1,F48_w2*. File *train_label.csv* includes more details of the images.
### test folder
Testing set includes 1,200 images, which were randomly selected from 3 levels of blur (*F1, F23, F48*) and two types of stains (*w1-cell body stain, w2-nuclei stain*). There are 200 images in each of the six combinations of blur levels and types of stains: *F1_w1,F1_w2,F23_w1,F23_w2,F48_w1,F48_w2*. File *test_label.csv* includes more details of the images.
### train_label.csv
Rows include the information for individual images in the training set. The meanings of the four columns are:
- ***image_name***: for example, an image named *A01_C1_F1_s01_w1.TIF* can be explained as:
    > - *A01*: The simulated 384-well plate format. Rows are named A-P and columns 1-24. You don't need this information.
    > - *C1*: The number of cells simulated in the image (1-100).
    > - *F1*: The amount of focus blur applied (1, 23, 48).
    > - *s01*: Number of samples(1-25). You don't need this information.
    > - *w1*: 1 = cell body stain, 2 = nuclei stain.

 - ***cell_count***: from 1 to 100.
 - ***blur***: The amount of focus blur applied (1, 23, 48).
 - ***stain***: 1 = cell body stain, 2 = nuclei stain.
### test_label.csv
Rows include the information for individual images in the test set. The meanings of the three columns are the same as those in the *train_label.csv* file. We blinded the cell count information for each of the images in the test set.

We also provided the R and python codes to read the images for data analysis.
### code.R
R code for reading the pixel value of the images and their label information.
- Please change the directory to your working path.
- This R code may take more than 15 mins to read all the images in the environment.Feel free to edit this or use your own methods to read the pixel value of the images in your computing environment.
### code.py
Python code for reading the pixel value of the images and their label information.
- Please change the directory to your working path.
- Feel free to edit this or use your own methods to read the pixel value of the images in your computing environment.

