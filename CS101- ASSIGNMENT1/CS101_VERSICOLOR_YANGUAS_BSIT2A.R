
#view iris data
data("iris")
iris
View(iris)

summary(iris$Species)

#subset

iris_species1 <- subset(iris, Species == "versicolor")
iris_species1



#Total mean of versicolor

versicolor<- iris$Sepal.Length[51:100]
versicolor

versicolor1 <- iris$Sepal.Width[51:100]
versicolor1


versicolor2 <- iris$Petal.Width[51:100]
versicolor2

versicolor3<- iris$Petal.Length[51:100]
versicolor3

totalmean <- c(versicolor, versicolor1, versicolor2, versicolor3)
totalmean

mean(totalmean)


#mean of each characteristics of Setosa

mean(versicolor)
mean(versicolor1)
mean(versicolor2)
mean(versicolor3)

