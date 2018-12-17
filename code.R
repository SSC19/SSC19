rm(list = ls())
library(raster)
library(rgdal)
library(plotly)
library(Thermimage)

#label file
setwd("~/Downloads/SSC19")
label <- read.csv("label_file.csv",header = T,row.names = 1)

#image
setwd("~/Downloads/SSC19/image")
image_name<-paste0(label$image_name,".TIF")
##create an array (image_array) containing pixel value of 2400 images
image_array<-array(NA,c(520,696,2400))
start_time <- Sys.time()
for (i in 1:2400){
  image_array[,,i]<-as.array(raster(image_name[i]))
}#Large array, 3.2 Gb
end_time <- Sys.time()
end_time - start_time #Time difference of 10.15881 mins
##plot 1 image as an example
plot_ly(x=NULL,y=NULL,z=flip.matrix(image_array[,,1]), type = "heatmap",colors=colorRamp(c("black", "white")) ,showscale = F)


#ground_truth_mask
setwd("~/Downloads/SSC19/ground_truth_mask")
ground_truth_name<-paste0(label$ground_truth_mask_name,".TIF")
##create an array (ground_truth_array) containing pixel value of 1200 ground truth masks
ground_truth_array<-array(NA,c(520,696,1200))
start_time <- Sys.time()
for (i in 1:1200){
  ground_truth_array[,,i]<-as.array(raster(ground_truth_name[i]))
}
end_time <- Sys.time()
end_time - start_time #Time difference of 5.576581 mins



