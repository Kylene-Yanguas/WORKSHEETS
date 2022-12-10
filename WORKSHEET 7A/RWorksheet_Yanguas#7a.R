#1. Create a data frame for the table below.

Student <- c(1,2,3,4,5,6,7,8,9,10)
Pre_test <- c(55,54,47,57,51,61,57,54,63,58)
Post_test <- c(61,60,56,63,56,63,59,56,62,61)

Students_ScoresDF <- data.frame(Student, Pre_test, Post_test ) 

#a. Compute the descriptive statistics using different packages (Hmisc and pastecs).
#Write the codes and its result.

library(Hmisc)
library(pastecs)

describe(Students_ScoresDF)

stat.desc(Students_ScoresDF)

#2. The Department of Agriculture was studying the effects of several levels of a
#fertilizer on the growth of a plant. For some analyses, it might be useful to convert
#the fertilizer levels to an ordered factor.
#• The data were 10,10,10, 20,20,50,10,20,10,50,20,50,20,10.
  levels_of_fert <- c(10,10,10,20,20,50,10,
                      20,10,50,20,50,20,10)
  
#a. Write the codes and describe the result.
  Orders <- factor(levels_of_fert, ordered = TRUE)
  Orders
  #The result shows the ascending levels of fertilizer.
  
#3. Abdul Hassan, president of Floor Coverings Unlimited, has asked you to study
#the exercise levels undertaken by 10 subjects were “l”, “n”, “n”, “i”, “l” ,
#“l”, “n”, “n”, “i”, “l” ; n=none, l=light, i=intense
  subjects <- c("l","n","n","i","l","l","n","n","i","l")
  #a. What is the best way to represent this in R?
  subjectDF <- data.frame(subjects)
  
#4. Sample of 30 tax accountants from all the states and territories of Australia and
#their individual state of origin is specified by a character vector of state mnemonics as:
    state <- c("tas", "sa", "qld", "nsw", "nsw", "nt", "wa", "wa", "qld",
               "vic", "nsw", "vic", "qld", "qld", "sa", "tas", "sa", "nt",
               "wa", "vic", "qld", "nsw", "nsw", "wa", "sa", "act", "nsw",
               "vic", "vic", "act")
    
#a. Apply the factor function and factor level. Describe the results.
  state_factor <- factor(state)
  state_factor  

  levels(state_factor)  
#The character vectors was arrange in ascending levels. 
  
#5. From #4 - continuation:
#• Suppose we have the incomes of the same tax accountants in another vector (in
#suitably large units of money)
  
  incomes <- c(60, 49, 40, 61, 64, 60, 59, 54,
               62, 69, 70, 42, 56, 61, 61, 61, 58, 51, 48,
               65, 49, 49, 41, 48, 52, 46, 59, 46, 58, 43)
  
#a. Calculate the sample mean income for each state we can now use the special function tapply():
  incmeans <- tapply(incomes, state, mean)
  incmeans
  
#b. Copy the results and interpret.
  #act      nsw       nt      qld       sa      tas      vic       wa 
  #44.50000 57.33333 55.50000 53.60000 55.00000 60.50000 56.00000 52.25000 

#6. Calculate the standard errors of the state income means (refer again to number 3)
  stdError <- function(x) sqrt(var(x)/length(x))
 
#a. What is the standard error? Write the codes.
  incster <- tapply(incomes, state, stdError)
  incster
  
#b. Interpret the result.
  #the result of data shows the standard errors of the state income means.

#7. Use the titanic dataset.
  data("Titanic")
  View(Titanic)
  Titanic <- data.frame(Titanic)
#a. subset the titatic dataset of those who survived and not survived. Show the
#codes and its result.
  Survives <- subset(Titanic, Survived == "Yes")
  Survives
  
  Died <- subset(Titanic, Survived == "No")
  Died

#8. The data sets are about the breast cancer Wisconsin. The samples arrive periodically as Dr. Wolberg reports his clinical cases. The database therefore reflects this
#chronological grouping of the data. You can create this dataset in Microsoft Excel.

#a. describe what is the dataset all about.
  #The dataset is all about breast cancer Wisconsin.

#b. Import the data from MS Excel. Copy the codes.
getwd()

br_cancer <- read.table("/cloud/project/WORKSHEET 7A/Breast_Cancer.csv", header = FALSE, sep = "," )
br_cancer

#c. Compute the descriptive statistics using different packages. Find the values of:
#c.1 Standard error of the mean for clump thickness.
Clump<- as.numeric(br_cancer$V2)
num8.n <- length(Clump)
num8.sd <- sd(Clump)
num8.se <- num8.sd /sqrt(Clump)
num8.se

   
#c.2 Coefficient of variability for Marginal Adhesion.
   Marginal_Adhesion <- as.numeric(br_cancer$V5)
   stat.desc(Marginal_Adhesion)
  #The result is 0.9767235 
   
#c.3 Number of null values of Bare Nuclei.
   Bare_Nuclei <- as.numeric(br_cancer$V7)
   stat.desc( Bare_Nuclei)
  #The result is  0.0000000
   
#c.4 Mean and standard deviation for Bland Chromatin
  Bland_Chromatin <- as.numeric(br_cancer$V8)
  mean(Bland_Chromatin , na.rm = TRUE) 
  sd(Bland_Chromatin , na.rm = TRUE)
  
  stat.desc( Bland_Chromatin)
  
  #The mean is 3.836735
  #The standard Deviation is 2.085135
  
#c.5 Confidence interval of the mean for Uniformity of Cell Shape
 cell_shape <- as.numeric(br_cancer$V4)
 stat.desc(cell_shape )
 #The result is 0.8360810
 
#d. How many attributes?
   
#e. Find the percentage of respondents who are malignant. Interpret the results.
describe(br_cancer$V11, na.rm =TRUE)

#9. Export the data abalone to the Microsoft excel file. Copy the codes.

library("AppliedPredictiveModeling")
data("abalone")
View(abalone)
head(abalone)
summary(abalone)

#Exporting the data abalone to the Microsoft excel file
library(xlsx)
write.xlsx("abalone","/cloud/project/WORKSHEET 7A/abalone.xlsx")
