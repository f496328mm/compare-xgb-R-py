pred.python <- read.table("python.csv", sep = ",")
library(xgboost)
X <- model.matrix(Species ~ . - 1, iris)
y <- as.integer(iris$Species) - 1

X.gbm <- xgb.DMatrix(X, label = y)
xgb <- xgboost(X.gbm, params = list(
  'max_depth'= 3,  # the maximum depth of each tree
  'eta'= 0.3,  # the training step for each iteration
  'objective'= 'multi:softprob',  # error evaluation for multiclass training
  'num_class'= 3  # the number of classes that exist in this datset
), nrounds = 200)
pred.R <- matrix(predict(xgb, X.gbm), ncol = 3, byrow = TRUE)
max(abs(pred.R - pred.python))
