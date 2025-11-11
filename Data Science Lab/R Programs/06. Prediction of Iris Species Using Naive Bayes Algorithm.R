library(e1071)
library(caTools)
library(gmodels)
iris = read.csv("iris.csv")
set.seed(100)
split <- sample.split(iris$species, SplitRatio = 0.7)
iris1 <- subset(iris, split == "TRUE")
iris2 <- subset(iris, split == "FALSE")
iris_train = iris1[,1:4]
iris_test = iris2[,1:4]
iris_train_labels = iris1[,5]
iris_test_labels = iris2[,5]
classifier_cl <- naiveBayes(iris_train,iris_train_labels )
print(classifier_cl)
iris_test_pred <- predict(classifier_cl, iris_test)
print(iris_test_pred)
CrossTable(iris_test_labels, iris_test_pred, prop.chisq=FALSE)