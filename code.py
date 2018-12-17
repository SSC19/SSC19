from PIL import Image
import os
import numpy as np
import csv

os.chdir("/Users/lq/Downloads/SSC19")

image_name = []
ground_truth_name = []
cell_count = []
blur_level = []
stain = []
with open('label_file.csv', newline='') as f:
    reader = csv.reader(f)
    next(reader,None)
    for row in reader:
        image_name.append(row[1]+'.TIF')
        ground_truth_name.append(row[2]+'.TIF')
        cell_count.append(row[3])
        blur_level.append(row[4])
        stain.append(row[5])


os.chdir("/Users/lq/Downloads/SSC19/image")

image_list = []
for i in image_name:
	im = Image.open(i)
	#im.show()
	imarray = np.array(im)
	image_list.append(imarray)


os.chdir("/Users/lq/Downloads/SSC19/ground_truth_mask")
ground_truth_list = []
for i in ground_truth_name:
	im = Image.open(i)
	#im.show()
	imarray = np.array(im)
	ground_truth_list.append(imarray)










