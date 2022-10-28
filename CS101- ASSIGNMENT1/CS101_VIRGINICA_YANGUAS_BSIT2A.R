#view iris data
data("iris")
iris
View(iris)

summary(iris$Species)

#subset
iris_species2 <- subset(iris, Species == "virginica")
iris_species2

#Total mean of versicolor

virginica<- iris$Sepal.Length[101:150]
virginica

virginica1 <- iris$Sepal.Width[101:150]
virginica1


virginica2 <- iris$Petal.Width[51:100]
virginica2

virginica3<- iris$Petal.Length[51:100]
virginica3

totalmean <- c(virginica, virginica1, virginica2, virginica3)
totalmean

mean(totalmean)


#mean of each characteristics of Setosa

mean(virginica)
mean(virginica1)
mean(virginica2)
mean(virginica3)

