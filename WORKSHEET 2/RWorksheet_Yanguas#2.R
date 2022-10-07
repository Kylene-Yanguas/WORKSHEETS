#1.	Create a vector using : operator
option 
seq(from=-5, to =5)

#b.	x <- 1:7. What will be the value of x?

x <- 1:7
x	


#2.	* Create a vector using seq() function
seq(1, 3, by=0.2) 


#3.	A factory has a census of its workers. There are 50 workers in total. The following list shows their ages:	34, 28, 22, 36, 27, 18, 52, 39, 42, 29, 35, 31, 27, 22, 37, 34, 19, 20, 57, 49, 50, 37, 46, 25, 17, 37, 43, 53, 41, 51, 35, 24,33, 41, 53, 40, 18, 44, 38, 41, 48, 27, 39, 19, 30, 61, 54, 58, 26, 18.  
a <- c(34, 28, 22, 36, 27, 18, 52, 39, 42, 29,
       35, 31, 27, 22, 37, 34, 19, 20, 57, 49,
       50, 37, 46, 25, 17, 37, 43, 53, 41, 51, 
       35, 24,33, 41, 53, 40, 18, 44, 38, 41, 
       48, 27, 39, 19, 30, 61, 54, 58, 26, 18)
#a.	Access 3rd element, what is the value?

a[3]

#b.	Access 2nd and 4th element, what are the values?
a[2]
a[4]

#c.	Access all but the 1st element is not included. Write the R code and its output.
a[2:50]


#4.	*Create a vector x <- c("first"=3, "second"=0, "third"=9). Then named the vector, names(x).

x <- c("first"=3, "second"=0, "third"=9)

#a.	Print the results. Then access x[c("first", "third")]. 

x[c("first", "third")]

#5.	Create a sequence x from -3:2.
x <- seq(from = -3, to= 2)
x

#a.	Modify 2nd element and change it to 0;
x[2] <- 0
x

#6.	*The following data shows the diesel fuel purchased by Mr. Cruz.

diesel <- data.frame(
  month = c("January", "February", "March", 
            "April", "May", "June"),
  Price = c("52.50", "57.25", "60.00", "65.00", "74.25", "54.00"),
  purchase = c("25", "30", "40", "50", "10", "45") 
)
diesel  

#b.	What is the average fuel expenditure of Mr. Cruz from Jan to June? Note: Use

liter= c(52.50, 57.25, 60.00, 65.00, 74.25, 54.00)
purchase = c(25, 30, 40, 50, 10, 45) 

weighted.mean(liter, purchase)

#7
#a.	Type "rivers" in your R console.
rivers

#Create a vector data with 7 elements, containing the number of elements 
data <- c(length(rivers), sum(rivers),
          mean(rivers), median(rivers),
          var(rivers), sd(rivers), 
          min(rivers), max(rivers))
data

#8.	The table below gives the 25 most powerful celebrities and their annual pay as ranked by the editions of Forbes magazine and as listed on the Forbes.com website.

PowerRanking <- 1:25



CelebrityName = c("Tom Cruise","Rolling Stones", 
                  "Oprah Winfrey","U2", "Tiger Woods",
                  "Steven Speilberg","Howarf Stern",
                  "50 Cent", "Cast of the sopranos",
                  "Dan Brown","Bruce Springsteen",
                  "Donald Trump","Muhammand Ali",
                  "Paul McCartney","George Lucas",
                  "Elton John","David Letterman",
                  "Phil Mickelson", "J.K Rowling",
                  "Bradd Pitt","Peter Jackson",
                  "Dr.Phil McGraw","Jay Lenon",
                  "Celine Dion","Kobe Bryan")

Pay = c(67,90,225,110,90,32,302,41,52,88,55,44,
        55,40,233,34,40,47,75,25,39,45,32,40,31)

Ranking <- data.frame(PowerRanking, CelebrityName,Pay) 
Ranking 


#b 
PowerRanking[19] <- 15
PowerRanking

Pay [19] <-90
Pay


