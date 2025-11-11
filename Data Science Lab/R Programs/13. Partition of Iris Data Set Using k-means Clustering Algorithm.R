set.seed(100)
iris <- read.csv("iris.csv")
iris2 <- iris
iris2$species <- NULL
iris_clusters <- kmeans(iris2, 3)
print(iris_clusters)
print(table(iris$species, iris_clusters$cluster))