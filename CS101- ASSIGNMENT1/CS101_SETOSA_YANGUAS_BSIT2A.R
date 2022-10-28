#view iris data
data("iris")
iris
View(iris)

summary(iris$Species)

#Subset

iris_species <- subset(iris, Species=="setosa")
iris_species

#Total mean of Setosa

setosa <- iris$Sepal.Length[1:50]
setosa

setosa1 <- iris$Sepal.Width[1:50]
setosa1

setosa2 <- iris$Petal.Width[1:50]
setosa2

setosa3<- iris$Petal.Length[1:50]
setosa3

totalmean <- c(setosa, setosa1, setosa2, setosa3)
totalmean

mean(totalmean)


#mean of each characteristics of Setosa

mean(setosa)
mean(setosa1)
mean(setosa2)
mean(setosa3)

