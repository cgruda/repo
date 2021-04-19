
# Project 20-1-1-2187
# CNN accelerator
# Chaim Gruda
# Shay Tsabar

# this script exports mnist data into csv files for simulation
# original mnist images are 28x28, new data is 54x54

import numpy as np
import cv2
from matplotlib import pyplot
from sklearn.model_selection import KFold
from keras.datasets import mnist
from keras.utils import to_categorical

path = "D:\\School\\Project\\Simulation\\"

def resize_dataset(trainXYtuple, testXYtuple):
	resize = lambda img: cv2.resize(img, dsize=(54, 54), interpolation=cv2.INTER_CUBIC)
	trainXnew = np.array([resize(xi) for xi in trainXYtuple[0]])
	trainYnew = trainXYtuple[1]
	testXnew = np.array([resize(xi) for xi in testXYtuple[0]])
	testYnew = testXYtuple[1]
	return (trainXnew, trainYnew), (testXnew, testYnew)

def load_dataset():
	trainXYt, testXYt = mnist.load_data()
	(trainX, trainY), (testX, testY) = resize_dataset(trainXYt, testXYt)
	trainX = trainX.reshape((trainX.shape[0], 54, 54, 1))
	testX = testX.reshape((testX.shape[0], 54, 54, 1))
	trainY = to_categorical(trainY)
	testY = to_categorical(testY)
	return trainX, trainY, testX, testY

def split_dataset_and_create_csv(dataX, dataY, n_folds=3):
	kfold = KFold(n_folds, shuffle=True, random_state=1)
	run = 0
	for train_ix, test_ix in kfold.split(dataX):
		trainX, trainY, testX, testY = dataX[train_ix], dataY[train_ix], dataX[test_ix], dataY[test_ix]
		for i in range(len(testX)):
			file_path = path + "test{}\\{}\\img{}.csv".format(run, np.where(testY[i] == 1)[0][0],i)
			new_testX_i = np.squeeze(testX[i], axis=2)
			np.savetxt(file_path, new_testX_i, delimiter=',')
		run = run + 1

def run_harness():
	trainX, trainY, testX, testY = load_dataset()
	split_dataset_and_create_csv(trainX, trainY)
 
run_harness()