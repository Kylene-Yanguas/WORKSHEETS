library(dplyr)

#1. The table below shows the data about shoe size and height. Create a data frame..

Shoe_size <- c(6.5, 9.0, 8.5, 8.5, 10.5, 7.0,9.5,
               9.0,13.0,7.5,10.5, 8.5, 12.0, 10.5,
               13.0, 11.5, 8.5, 5.0, 10.0, 6.5, 7.5,
               8.5, 10.5, 8.5, 10.5, 11.0, 9.0, 13.0)
Height <- c(66.0, 68.0, 64.5,65.0,70.0, 64.0, 70.0,
            71.0, 72.0,64.0,74.5,67.0, 71.0, 71.0,
            77.0, 72.0, 59.0,62.0,72.0,66.0,64.0,67.0,
            73.0,69.0,72.0,70.0,69.0,70.0)
Gender <- c("F","F", "F", "F","M", "F", "F", "F","M",
            "F", "M", "F","M", "M", "M","M","F","F","M",                        "F","F","M", "M", "F",
            "M", "M", "M", "M")

data_frame <- data.frame(Shoe_size, Height, Gender)

data_frame

#a. Describe the data.
# The data shows the shoe size and height according to Gender. It 
#shows that most of the male has a higher shoe size and height than female. 

#b. Find the mean of shoe size and height of the respondents.
#Copy the codes and results.   

summary(data_frame)
#The mean of shoesize is 9.50  and the mean of Height is 68.71. 

#c. Is there a relationship between shoe size and height? Why?
#Yes because if you have a taller height then your shoe size is longer, 
#same with having a shorter height. 

#2. Construct character vector months to a factor with factor() and assign the result to 
#factor_months_vector. Print out factor_months_vector and assert that R prints out
#the factor levels below the actual values.

months <- c("March","April","January","November","January",
            "September","October","September","November","August",
            "January","November","November","February","May","August",
            "July","December","August","August","September","November","February","April")

factor_months_vector <- factor(months)
factor_months_vector  

#3. Then check the summary() of the months_vector and factor_months_vector.
#Interpret the results of both vectors. Are they both equally useful in this case?
summary( months)
summary(factor_months_vector)
#Using this summary( months_factor) its results show that there are
#24 character used while using this summary(factor_months_vector)
#its results show that every month has a number of how many it is. 

#4. Create a vector and factor for the table below.

Direction <- c("East", "West", "North")
Frequency <- c(1,4,3)

factor_data <- factor(Direction)
factor_data 

factor_data <- factor(Frequency)
factor_data 

#Apply the factor function with required order of the level.
factor_data <- c("East", "West", "North")
new_order_data <- factor(factor_data,levels = c("East","West","North"))
print(new_order_data)

#5. Enter the data below in Excel with file name = import_march.csv
#a. Import the excel file into the Environment Pane using read.table() function.
#Write the code.
read_data <- read.table("/cloud/project/WORKSHEET 4/import_march.csv",
                        header = TRUE, sep =",")     

#b.View the dataset. Write the code and its result.
read.csv("/cloud/project/WORKSHEET 4/import_march.csv")