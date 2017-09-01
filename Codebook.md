---
title: "Codebook"
output: html_document
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

## DATA DICTIONARY

subjectid
  identification number for subject
    1..30 .Unique identifier assigned during experimental study
  
activity
  activity label
    laying 
    sitting 
    standing 
    walking 
    walkingdownstairs 
    walkingupstairs
  
tbodyaccmeanx
  mean of the body acceleration in the x direction
    normalized and bounded within [-1,1]

tbodyaccmeany
  mean of the body acceleration in the y direction
    normalized and bounded within [-1,1]

tbodyaccmeanz
  mean of the body acceleration in the z direction
    normalized and bounded within [-1,1]

tbodyaccstdx
  standard deviation of the body acceleration in the x direction
    normalized and bounded within [-1,1]
    
tbodyaccstdy
  standard deviation of the body acceleration in the y direction
    normalized and bounded within [-1,1]

tbodyaccstdz
  standard deviation of the body acceleration in the z direction
    normalized and bounded within [-1,1]

tgravityaccmeanx
  mean of the gravity acceleration in the x direction
    normalized and bounded within [-1,1]

tgravityaccmeany
  mean of the gravity acceleration in the y direction
    normalized and bounded within [-1,1]

tgravityaccmeanz
  mean of the gravity acceleration in the z direction
    normalized and bounded within [-1,1]

tgravityaccstdx
  standard deviation of the gravity acceleration in the x direction
    normalized and bounded within [-1,1]

tgravityaccstdy
  standard deviation of the gravity acceleration in the y direction
    normalized and bounded within [-1,1]

tgravityaccstdz
  standard deviation of the gravity acceleration in the z direction
    normalized and bounded within [-1,1]

tbodyaccjerkmeanx
  mean of the body linear acceleration jerk in the x direction
    normalized and bounded within [-1,1]

tbodyaccjerkmeany
  mean of the body linear acceleration jerk in the y direction
    normalized and bounded within [-1,1]
    
tbodyaccjerkmeanz
  mean of the body linear acceleration jerk in the z direction
    normalized and bounded within [-1,1]
    
tbodyaccjerkstdx
  standard deviation of the body linear acceleration jerk in the x direction
    normalized and bounded within [-1,1]
    
tbodyaccjerkstdy
  standard deviation of the body linear acceleration jerk in the y direction
    normalized and bounded within [-1,1]
    
tbodyaccjerkstdz
  standard deviation of the body linear acceleration jerk in the z direction
    normalized and bounded within [-1,1]
    
tbodygyromeanx
  mean of the body angular velocity in the x direction
    normalized and bounded within [-1,1]
    
tbodygyromeany
  mean of the body angular velocity in the y direction
    normalized and bounded within [-1,1]
    
tbodygyromeanz
  mean of the body angular velocity in the z direction
    normalized and bounded within [-1,1]
    
tbodygyrostdx
  standard deviation of the body angular velocity in the x direction
    normalized and bounded within [-1,1]
    
tbodygyrostdy
  standard deviation of the body angular velocity in the y direction
    normalized and bounded within [-1,1]
    
tbodygyrostdz
  standard deviation of the body angular velocity in the z direction
    normalized and bounded within [-1,1]
    
tbodygyrojerkmeanx
  mean of the body angular velocity jerk in the x direction
    normalized and bounded within [-1,1]
    
tbodygyrojerkmeany
  mean of the body angular velocity jerk in the y direction
    normalized and bounded within [-1,1]
    
tbodygyrojerkmeanz
  mean of the body angular velocity jerk in the z direction
    normalized and bounded within [-1,1]
    
tbodygyrojerkstdx
  standard deviation of the body angular velocity jerk in the x direction
    normalized and bounded within [-1,1]
    
tbodygyrojerkstdy
  standard deviation of the body angular velocity jerk in the y direction
    normalized and bounded within [-1,1]
    
tbodygyrojerkstdz
  standard deviation of the body angular velocity jerk in the z direction
    normalized and bounded within [-1,1]
    
tbodyaccmagmean
  mean of the magnitude using the Euclidean norm of the body acceleration
    normalized and bounded within [-1,1]
    
tbodyaccmagstd
  standard deviation of the magnitude using the Euclidean norm of the body acceleration
    normalized and bounded within [-1,1]
    
tgravityaccmagmean
  mean of the magnitude using the Euclidean norm of the gravity acceleration
    normalized and bounded within [-1,1]
    
tgravityaccmagstd
  standard deviation of the magnitude using the Euclidean norm of the gravity acceleration
    normalized and bounded within [-1,1]
    
tbodyaccjerkmagmean
  mean of the magnitude using the Euclidean norm of the body linear acceleration jerk
    normalized and bounded within [-1,1]
    
tbodyaccjerkmagstd
  standard deviation of the magnitude using the Euclidean norm of the body linear acceleration jerk
    normalized and bounded within [-1,1]
    
tbodygyromagmean
  mean of the magnitude using the Euclidean norm of the angular velocity
    normalized and bounded within [-1,1]
    
tbodygyromagstd
  standard deviation of the magnitude using the Euclidean norm of the angular velocity
    normalized and bounded within [-1,1]
    
tbodygyrojerkmagmean
  mean of the magnitude using the Euclidean norm of the angular velocity jerk
    normalized and bounded within [-1,1]
    
tbodygyrojerkmagstd
  standard deviation of the magnitude using the Euclidean norm of the angular velocity jerk
    normalized and bounded within [-1,1]
    
fbodyaccmeanx
  mean of the Fast Fourier Transform (FFT) of the body acceleration in the x direction
    normalized and bounded within [-1,1]
    
fbodyaccmeany
  mean of the Fast Fourier Transform (FFT) of the body acceleration in the y direction
    normalized and bounded within [-1,1]
    
fbodyaccmeanz
  mean of the Fast Fourier Transform (FFT) of the body acceleration in the z direction
    normalized and bounded within [-1,1]
    
fbodyaccstdx
  standard deviation of the Fast Fourier Transform (FFT) of the body acceleration in the x direction
    normalized and bounded within [-1,1]
    
fbodyaccstdy
  standard deviation of the Fast Fourier Transform (FFT) of the body acceleration in the y direction
    normalized and bounded within [-1,1]
    
fbodyaccstdz
  standard deviation of the Fast Fourier Transform (FFT) of the body acceleration in the z direction
    normalized and bounded within [-1,1]
    
fbodyaccjerkmeanx
  mean of the Fast Fourier Transform (FFT) of the body acceleration jerk in the x direction
    normalized and bounded within [-1,1]
    
fbodyaccjerkmeany
  mean of the Fast Fourier Transform (FFT) of the body acceleration jerk in the y direction
    normalized and bounded within [-1,1]
    
fbodyaccjerkmeanz
  mean of the Fast Fourier Transform (FFT) of the body acceleration jerk in the z direction
    normalized and bounded within [-1,1]
    
fbodyaccjerkstdx
  standard deviation of the Fast Fourier Transform (FFT) of the body acceleration jerk in the x direction
    normalized and bounded within [-1,1]
    
fbodyaccjerkstdy
  standard deviation of the Fast Fourier Transform (FFT) of the body acceleration jerk in the x direction
    normalized and bounded within [-1,1]
    
fbodyaccjerkstdz
  standard deviation of the Fast Fourier Transform (FFT) of the body acceleration jerk in the x direction
    normalized and bounded within [-1,1]
    
fbodygyromeanx
  mean of the Fast Fourier Transform (FFT) of the angular velocity in the x direction
    normalized and bounded within [-1,1]
    
fbodygyromeany
  mean of the Fast Fourier Transform (FFT) of the angular velocity in the y direction
    normalized and bounded within [-1,1]
    
fbodygyromeanz
  mean of the Fast Fourier Transform (FFT) of the angular velocity in the z direction
    normalized and bounded within [-1,1]
    
fbodygyrostdx
  standard deviation of the Fast Fourier Transform (FFT) of the angular velocity in the x direction
    normalized and bounded within [-1,1]
    
fbodygyrostdy
  standard deviation of the Fast Fourier Transform (FFT) of the angular velocity in the y direction
    normalized and bounded within [-1,1]
    
fbodygyrostdz
  standard deviation of the Fast Fourier Transform (FFT) of the angular velocity in the z direction
    normalized and bounded within [-1,1]
    
fbodyaccmagmean
  mean of the magnitude using the Euclidean norm of the Fast Fourier Transform (FFT) of the body acceleration
    normalized and bounded within [-1,1]
    
fbodyaccmagstd
  standard deviation of the magnitude using the Euclidean norm of the Fast Fourier Transform (FFT) of the body acceleration
    normalized and bounded within [-1,1]
    
fbodybodyaccjerkmagmean
  mean of the magnitude using the Euclidean norm of the Fast Fourier Transform (FFT) of the body acceleration jerk
    normalized and bounded within [-1,1]
    
fbodybodyaccjerkmagstd
  standard deviation of the magnitude using the Euclidean norm of the Fast Fourier Transform (FFT) of the body acceleration jerk
    normalized and bounded within [-1,1]
    
fbodybodygyromagmean
  mean of the magnitude using the Euclidean norm of the Fast Fourier Transform (FFT) of the angular velocity
    normalized and bounded within [-1,1]

fbodybodygyromagstd
  standard deviation of the magnitude using the Euclidean norm of the Fast Fourier Transform (FFT) of the angular velocity
    normalized and bounded within [-1,1]

fbodybodygyrojerkmagmean
  mean of the magnitude using the Euclidean norm of the Fast Fourier Transform (FFT) of the angular velocity jerk
    normalized and bounded within [-1,1]

fbodybodygyrojerkmagstd
  standard deviation of the magnitude using the Euclidean norm of the Fast Fourier Transform (FFT) of the angular velocity jerk
    normalized and bounded within [-1,1]
  
