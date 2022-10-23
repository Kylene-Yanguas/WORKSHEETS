

LETTERS <- c("A" , "B", "C", "D", "E", "F", "G", "H","I", "J", "K",
             "L", "M" ,"N", "O", "P", "Q", "R", "S",
             "T", "U" ,"V", "W", "X","Y", "Z")

letters <- c("a", "b", "c", "d", "e","f", "g", "h",
             "i", "j", "k", "l", "m", "n", "o" ,"p",
             "q", "r", "s","t", "u", "v" ,"w" ,"x" ,"y" ,"z")



#Based on the above vector LETTERS:
# a. You need to produce a vector that contains the first 11 letters.
LETTERS[1:11]

#b. Produce a vector that contains the odd numbered letters.
oddLETTERS <- c(LETTERS[1:26 %% 2 != 0])
oddLETTERS
#c. Produce a vector that contains the vowels
#Based on the above vector letters:
vowelLetters <- c("A", "E", "I", "O", "U")
vowelLetters
#d. Produce a vector that contains the last 5 lowercase letters.
letters[22:26]

#e. Produce a vector that contains letters between 15 to 24 letters in lowercase.

letters [15:24]


#2a. What is the R code and its result for creating a character vector for the city/town of
#Tuguegarao City, Manila, Iloilo City, Tacloban, Samal Island, and Davao City? Name the
#object as city. The names should follow the same order as in the instruction.

city <- c("Tuguegarao City", "Manila", "Iloilo City", 
          "Tacloban", "Samal Island","Davao City")
city
#b. The average temperatures in Celcius are 42, 39, 34, 34, 30, and 27 degrees.
#Name the object as temp. Write the R code and its output. Numbers should also follow what
#is in the instruction.

temp <- c(42, 39, 34, 34, 30,27) 
temp


#c. Associate the temperature temp with the city by using names() function. What is
#the R code and its result?


names(temp) <- city
temp

#e. From the answer in d, what is the content of index 5 and index 6? What is its R code?

temp[5]
temp[6]

#Using Matrices
#2. Create a matrix of one to eight and eleven to fourteen with four columns and three rows.
#a. What will be the R code for the #2 question and its result?
matr <- matrix(c(1:8, 11:14), nrow = 3, ncol = 4)

#b. Multiply the matrix by two. What is its R code and its result?
new <- matr * 2

#c. What is the content of row 2? What is its R code?
matr[2,]

#d. What will be the R code if you want to display the column 3 and column 4 in row 1 and row 2? What is its output?
matr[1,3]
matr[2,4]

#e. What is the R code is you want to display only the columns in 2 and 3, row 3? What is its output?
matr[3,2]
matr[3,3]

#f. What is the R code is you want to display only the columns 4? What is its output?
matr[,4]

#g. Name the rows as isa, dalawa, tatlo and columns as uno, dos, tres, quatro for the matrix that was created in b.'. What is its R code and corresponding output?
matr <- matrix(c(1:8, 11:14), nrow = 3, ncol = 4)
dimnames(matr) <- list(c("isa", "dalawa", "tatlo"), c("uno", "dos", "tres", "quatro"))  
matr
#h. From the original matrix you have created in a, reshape the matrix by assigning a new dimension with dim(). New dimensions should have 2 columns and 6 rows. What will be the R code and its output?

dim(matr) <- c(6, 2)
matr


#Using Array

#3. An array contains 1, 2, 3, 6, 7, 8, 9, 0, 3, 4, 5, 1
#a. Create an array for the above numeric values. Each values will be repeated twice
#What will be the R code if you are to create a three-dimensional array with 4 columns and 2 rows. What will be its output?
array_dta <- array( c(1, 2, 3, 6, 7, 8, 9, 0, 3, 4, 5, 1), c(2,4,3))
array_dta


#b. How many dimensions do your array have?
dim(array_dta)

#c. Name the rows as lowercase letters and columns as uppercase letters starting from the A. The array names should be 
#"1st-Dimensional Array", "2nd-Dimentional Array", and "3rd-Dimensional Array". What will be the R codes and its output?

array_dta
row.names <- c("lowercase letters")
column.names <- c("uppercase letters")
matrix.names <- c("1st-Dimensional Array","2nd-Dimentional Array","3rd-Dimensional Array" )
result <- array(c(array_dta),dim = c(2,4,3),
                dimnames = list(row.names,column.names,
                                matrix.names))


