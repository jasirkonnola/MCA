library(class)
library(gmodels)
wbcd = read.csv("wisc_bc_data.csv")
normalize <- function(x)
{
return ((x - min(x)) / (max(x) - min(x)))
}
wbcd_n = as.data.frame(lapply(wbcd[3:31], normalize))
wbcd_train = wbcd_n[1:469, ]
wbcd_test = wbcd_n[470:569, ]
wbcd_train_labels = wbcd[1:469, 2]
wbcd_test_labels = wbcd[470:569, 2]
wbcd_test_pred = knn(wbcd_train, wbcd_test, wbcd_train_labels,21)
print(wbcd_test_pred)
CrossTable(x = wbcd_test_labels, y = wbcd_test_pred, prop.chisq=FALSE)