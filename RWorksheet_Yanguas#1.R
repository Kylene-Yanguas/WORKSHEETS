age <- c(34, 28, 22, 36, 27, 18, 52, 39, 
         42, 29, 35, 31, 27, 22, 37, 34,
         19, 20, 57, 49, 50, 37, 46, 25,
         17, 37, 42, 53, 41, 51, 35, 24,
         33, 41)   #1.b set up a vector named age

df<-data.frame((age <- c(34, 28, 22, 36, 27, 18, 52, 39, 
                  42, 29, 35, 31, 27, 22, 37, 34,
                  19, 20, 57, 49, 50, 37, 46, 25,
                  17, 37, 42, 53, 41, 51, 35, 24,
                  33, 41))  #data point



age <- c(34, 28, 22, 36, 27, 18, 52, 39, 
               42, 29, 35, 31, 27, 22, 37, 34, 
               19, 20, 57, 49, 50, 37, 46, 25,
               17, 37, 42, 53, 41, 51, 35, 24,
               33, 41)
recip_num <- 1/age
recip_num #2.Find the reciprocal of the values for age

new_age <- c(age, 0, age) #3.	Assign also new_age <- c(age, 0, age).
new_age

sort(age) #4.	Sort the values for age.

min(age) #5.	Find the minimum and maximum value for age.

max(age) 


data <- c(2.4, 2.8, 2.1, 2.5, 2.4, 2.2, 2.5, 2.3,
              2.5, 2.3, 2.4, 2.7) #6.	Set up a vector named data

df <- data.frame(Data <- c(2.4, 2.8, 2.1, 2.5, 2.4, 2.2, 2.5, 2.3,
                           2.5, 2.3, 2.4,2.7)) #a.How many data points?                                                                                                              

data <- c(2.4, 2.8, 2.1, 2.5, 2.4, 2.2, 2.5, 2.3,
          2.5, 2.3, 2.4, 2.7)
2*data #7.	Generates a new vector for data where you double every value of the data.  What happen to the data?  

seq(1:100) #8.1	Integers from 1 to 100.

seq(20,60) #8.2	Numbers from 20 to 60

mean(20:60) #8.3	Mean of numbers from 20 to 60

sum(51:91) #8.4 Sum of numbers from 51 to 91      

seq(1:1000) #8.5 Integers from 1 to 1,000



var <- c(1:10)
max(var)  #b.	For 8.5 find only maximum data points until 10.



Filter(function(i) { all(i %% c(3,5,7) != 0) }, seq(100)) #9.	*Print a vector with the integers between 1 and 100 that are not divisible by 3, 5 and 7 using filter option.

seq(from = 100, to = 1) #10.	Generate a sequence backwards of the integers from 1 to 100.

sum(unique(c(seq(3,25,3), seq(5,25,5))))#11.List all the natural numbers below 25 that are multiples of 3 or 5.
                            
                                      #Find the sum of these multiples.


a <- seq(from = 100, to =1) #b.	Write the R code and its output from 10 and 11.
b <- c(seq(3,25,3), seq(5,25,5))



{ x <- 0+ x + 5 + } #Enter this statement: { x <- 0+ x + 5 + }


score <- c(72, 86, 92, 63, 88, 89, 91, 92, 75, 75, 77) #13.	*Set up a vector named score, consisting of 72, 86, 92, 63, 88, 89, 91, 92, 75, 75 and 77. To access individual elements of an atomic vector, one generally uses the x[i] construction.

x[2] = 86   #Find x[2] and x[3]. Write the R code and its output. 
x[3] = 92

a = c(1,2,NA,4,NA,6,7) 
print(a,na.print = "999")    #14.	*Create a vector a = c(1,2,NA,4,NA,6,7).
                              #Change the NA to 999 using the codes print(a,na.print="-999").

class(x) <- "foo"
name = readline(prompt="Input your name: ") 
age = readline(prompt="Input your age: ") 
print(paste("My name is",name, "and I am",age ,"years old.")) 
print(R.version.string)

