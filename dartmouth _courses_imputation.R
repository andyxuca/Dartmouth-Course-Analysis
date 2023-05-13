# Andy Xu
# May 12, 2023
# Imputing missing values in Dartmouth Courses data using R's MICE package

library(mice)

data <- read.csv("/Users/andyxu/Downloads/Dartmouth - Courses.csv")
tempData <- mice(data,m=5,maxit=50,meth='pmm',seed=500)
completedData <- complete(tempData,3)
completedData <- completedData[,-1]

write.csv(completedData, "/Users/andyxu/Downloads/courses.csv", row.names=FALSE)

