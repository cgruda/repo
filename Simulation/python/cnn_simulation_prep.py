import numpy as np
import cv2
from matplotlib import pyplot
from sklearn.model_selection import KFold
from keras.datasets import mnist
from keras.utils import to_categorical
from keras.models import Sequential
from keras.layers import Conv2D
from keras.layers import MaxPooling2D
from keras.layers import Dense
from keras.layers import Flatten
from keras.optimizers import SGD
import glob
import os

# path = "/home/cgruda/repo/Simulation/data/"
path = "D:\\School\\Project\\pyt\\"
delim = "\\"

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

def prep_pixels(train, test):
	train_norm = train.astype('float32')
	test_norm = test.astype('float32')
	train_norm = train_norm / 255.0
	test_norm = test_norm / 255.0
	return train_norm, test_norm

def define_model():
	model = Sequential()
	model.add(Conv2D(filters=1, kernel_size=(3, 3), activation='relu', kernel_initializer='he_uniform', input_shape=(54, 54, 1), use_bias=False))
	model.add(MaxPooling2D((2, 2)))
	model.add(Conv2D(filters=1, kernel_size=(3, 3), activation='relu', kernel_initializer='he_uniform', use_bias=False))
	model.add(MaxPooling2D((2, 2)))
	model.add(Flatten())
	model.add(Dense(50, activation='relu'))
	model.add(Dense(10, activation='softmax'))
	opt = SGD(lr=0.01, momentum=0.9)
	model.compile(optimizer=opt, loss='categorical_crossentropy', metrics=['accuracy'])
	return model

def create_data_csv(testX, testY):
	run = 0
	os.chdir(path)
	os.mkdir("data")
	os.chdir("data")
	for i in range(10):
		os.mkdir("{}".format(i))
	for i in range(len(testX)):
		file_path = path + "data{}{}{}img{}.csv".format(delim, np.where(testY[i] == 1)[0][0], delim, i)
		new_testX_i = np.squeeze(testX[i], axis=2)
		np.savetxt(file_path, new_testX_i, delimiter=',')
	run = run + 1

def index_data():
	for i in range(10):
		dir_path = path + "data{}{}{}".format(delim, i, delim)
		list_files_in_dir = glob.glob(dir_path + "/*")
		index_file_path = dir_path + "index.txt"
		with open(index_file_path, "w") as fp:
			for fname in list_files_in_dir:
				fp.write(fname + "\n")

def evaluate_model(trainX, trainY, testX, testY):
	model = define_model()
	history = model.fit(trainX, trainY, epochs=10, batch_size=32, validation_data=(testX, testY), verbose=1)
	score = model.evaluate(testX, testY, verbose=0)

	conv0kernel = np.squeeze(np.squeeze(model.layers[0].get_weights()[0], axis=2), axis=2)
	conv1kernel = np.squeeze(np.squeeze(model.layers[2].get_weights()[0], axis=2), axis=2)
	fc0weight = model.layers[5].get_weights()[0]
	fc0bias = model.layers[5].get_weights()[1]
	fc1weight = model.layers[6].get_weights()[0]
	fc1bias = model.layers[6].get_weights()[1]
	os.chdir(path)
	os.mkdir("cnn_vals")
	os.chdir("cnn_vals")
	curr_path = path + "cnn_vals" + delim
	np.savetxt(curr_path + "conv0kernel.csv", conv0kernel, delimiter=',')
	np.savetxt(curr_path + "conv1kernel.csv", conv1kernel, delimiter=',')
	np.savetxt(curr_path + "fc0weight.csv", fc0weight, delimiter=',')
	np.savetxt(curr_path + "fc0bias.csv", fc0bias, delimiter=',')
	np.savetxt(curr_path + "fc1weight.csv", fc1weight, delimiter=',')
	np.savetxt(curr_path + "fc1bias.csv", fc1bias, delimiter=',')
	return score

def run_test_harness():
	trainX, trainY, testX, testY = load_dataset()
	trainX, testX = prep_pixels(trainX, testX)
	create_data_csv(testX, testY)
	index_data()
	score = evaluate_model(trainX, trainY, testX, testY)
	print("Accuracy = %.3f" % score[1])

run_test_harness()