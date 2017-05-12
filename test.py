import numpy as np
from sklearn import datasets
import xgboost as xgb


iris = datasets.load_iris()
X = iris.data
y = iris.target
dtrain = xgb.DMatrix(X, label=y)

param = {
    'max_depth': 3,  # the maximum depth of each tree
    'eta': 0.3,  # the training step for each iteration
    'silent': 1,  # logging mode - quiet
    'objective': 'multi:softprob',  # error evaluation for multiclass training
    'num_class': 3}  # the number of classes that exist in this datset
num_round = 200  # the number of training iterations
bst = xgb.train(param, dtrain, num_round)
preds = bst.predict(dtrain)
np.savetxt("python.csv", preds, delimiter = ",")
