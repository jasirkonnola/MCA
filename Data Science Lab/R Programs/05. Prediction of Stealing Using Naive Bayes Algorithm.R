library(e1071)
cars = read.csv("cars.csv")
cars_train = cars[,2:4]
cars_train_labels = cars[,5]
cars_test = data.frame(Colour="red",Type="SUV",Origin="domestic")
classifier_cl <- naiveBayes(cars_train,cars_train_labels)
print(classifier_cl)
cars_test_pred <- predict(classifier_cl, cars_test)
cat("Prediction of Stolen Status:\n")
print(cars_test_pred)
