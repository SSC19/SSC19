
>We used the image set BBBC005v1 from the Broad Bioimage Benchmark Collection [Ljosa et al., Nature Methods, 2012].
## image
2,400 synthetic fluorescent	cell microscopy images.
- images are in 2 flur levels, each level has 1,200.
- See the *lable_file.csv* for further description of the names.
## ground_truth_mask
1,200 segmentation images.
- Pixels that belong to the foreground (i.e., the cells) are white, and pixels that belong to the background are black.
- See the *lable_file.csv* for further description of the names.
## label_file.csv
2,400 rows for 2,400 images, 5 colunms for 5 kinds of information.
- ***image_name***: names of 2,400 synthetic fluorescent cell microscopy images.

    > *SIMCEPImages_H01_C1_F23_s01_w1*
    > - *C1*: The number of cells simulated in the image (1-100).
    > - *F23*: The amount of focus blur applied (23, 48).
    > - *w1*: 1 = cell body stain, 2 = nuclei stain.

- ***ground_truth_name***: names of 1,200 ground truth masks (segmentation images). One ground truth mask corresponding to two synthetic fluorescent cell microscopy images, because of two flur levels.
- ***cell_count***: from 1 to 100.
- ***blur_level***: The amount of focus blur applied (23, 48).
- ***stain***: 1 = cell body stain, 2 = nuclei stain.
## code.R
R code for reading the images, ground truth masks, and their label information.
## code.py
Python code for reading the images, ground truth masks, and their label information.

