'''
code is from https://machinelearningmastery.com/how-to-develop-a-convolutional-neural-network-from-scratch-for-mnist-handwritten-digit-classification/
some modifications were done, namely export kernels and weights into csv files, and resize data to 54x54
'''

# baseline cnn model for mnist
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

path = "D:\\School\\Project\\Simualtion\\"

# resize data for our HW implemented CNN
def resize_dataset(trainXYtuple, testXYtuple):
	resize = lambda img: cv2.resize(img, dsize=(54, 54), interpolation=cv2.INTER_CUBIC)
	trainXnew = np.array([resize(xi) for xi in trainXYtuple[0]])
	trainYnew = trainXYtuple[1]
	testXnew = np.array([resize(xi) for xi in testXYtuple[0]])
	testYnew = testXYtuple[1]
	return (trainXnew, trainYnew), (testXnew, testYnew)

# load train and test dataset
def load_dataset():
	# load dataset
	trainXYt, testXYt = mnist.load_data()
	(trainX, trainY), (testX, testY) = resize_dataset(trainXYt, testXYt)
	# reshape dataset to have a single channel
	trainX = trainX.reshape((trainX.shape[0], 54, 54, 1))
	testX = testX.reshape((testX.shape[0], 54, 54, 1))
	# one hot encode target values
	trainY = to_categorical(trainY)
	testY = to_categorical(testY)
	return trainX, trainY, testX, testY
 
# scale pixels
def prep_pixels(train, test):
	# convert from integers to floats
	train_norm = train.astype('float32')
	test_norm = test.astype('float32')
	# normalize to range 0-1
	train_norm = train_norm / 255.0
	test_norm = test_norm / 255.0
	# return normalized images
	return train_norm, test_norm
 
# define cnn model
def define_model():
	model = Sequential()
	model.add(Conv2D(filters=1, kernel_size=(3, 3), activation='relu', kernel_initializer='he_uniform', input_shape=(54, 54, 1), use_bias=False))
	model.add(MaxPooling2D((2, 2)))
	model.add(Conv2D(filters=1, kernel_size=(3, 3), activation='relu', kernel_initializer='he_uniform', use_bias=False))
	model.add(MaxPooling2D((2, 2)))
	model.add(Flatten())
	model.add(Dense(50, activation='relu'))
	model.add(Dense(10, activation='softmax'))
	# compile model
	opt = SGD(lr=0.01, momentum=0.9)
	model.compile(optimizer=opt, loss='categorical_crossentropy', metrics=['accuracy'])
	return model
 
# evaluate a model using k-fold cross-validation
def evaluate_model(dataX, dataY, n_folds=3):
	scores, histories = list(), list()
	# prepare cross validation
	kfold = KFold(n_folds, shuffle=True, random_state=1)
	run = 0
	# enumerate splits
	for train_ix, test_ix in kfold.split(dataX):
		# define model
		model = define_model()
		# select rows for train and test
		trainX, trainY, testX, testY = dataX[train_ix], dataY[train_ix], dataX[test_ix], dataY[test_ix]
		# fit model
		history = model.fit(trainX, trainY, epochs=10, batch_size=32, validation_data=(testX, testY), verbose=0)
		# evaluate model
		_, acc = model.evaluate(testX, testY, verbose=0)
		print('> %.3f' % (acc * 100.0))

		conv0kernel = model.layers[0].get_weights()[0]
		conv1kernel = model.layers[2].get_weights()[0]
		fc0weight = model.layers[5].get_weights()[0]
		fc0bias = model.layers[5].get_weights()[1]
		fc1weight = model.layers[6].get_weights()[0]
		fc1bias = model.layers[6].get_weights()[1]
		print("kernel0:")
		print(conv0kernel)
		print("kernel1:")
		print(conv1kernel)
		# np.savetxt(path + "conv0kernel{}.csv".format(run), conv0kernel, delimiter=',')
		# np.savetxt(path + "conv1kernel{}.csv".format(run), conv1kernel, delimiter=',')
		np.savetxt(path + "fc0weight{}.csv".format(run), fc0weight, delimiter=',')
		np.savetxt(path + "fc0bias{}.csv".format(run), fc0bias, delimiter=',')
		np.savetxt(path + "fc1weight{}.csv".format(run), fc1weight, delimiter=',')
		np.savetxt(path + "fc1bias{}.csv".format(run), fc1bias, delimiter=',')
		
		# stores scores
		scores.append(acc)
		histories.append(history)
		run = run + 1
	return scores, histories
 
# plot diagnostic learning curves
def summarize_diagnostics(histories):
	for i in range(len(histories)):
		# plot loss
		pyplot.subplot(2, 1, 1)
		pyplot.title('Cross Entropy Loss')
		pyplot.plot(histories[i].history['loss'], color='blue', label='train')
		pyplot.plot(histories[i].history['val_loss'], color='orange', label='test')
		# plot accuracy
		pyplot.subplot(2, 1, 2)
		pyplot.title('Classification Accuracy')
		pyplot.plot(histories[i].history['accuracy'], color='blue', label='train')
		pyplot.plot(histories[i].history['val_accuracy'], color='orange', label='test')
	pyplot.show()
 
# summarize model performance
def summarize_performance(scores):
	# print summary
	print('Accuracy: mean=%.3f std=%.3f, n=%d' % (np.mean(scores)*100, np.std(scores)*100, len(scores)))
	# box and whisker plots of results
	pyplot.boxplot(scores)
	pyplot.show()
 
# run the test harness for evaluating a model
def run_test_harness():
	# load dataset
	trainX, trainY, testX, testY = load_dataset()
	# prepare pixel data
	trainX, testX = prep_pixels(trainX, testX)
	# evaluate model
	scores, histories = evaluate_model(trainX, trainY)
	summarize_diagnostics(histories)
	# summarize estimated performance
	summarize_performance(scores)
 
# entry point, run the test harness
run_test_harness()