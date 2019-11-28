# TensorFlow and tf.keras
import tensorflow as tf
from tensorflow import keras
import h5py
# Helper libraries
import numpy as np
import matplotlib.pyplot as plt
import glob, os
import re
# Directories of datasets
test_dir = '/home/pi/tensorflow1/Pen/PPVM/pen_dataset/test_set/'
trial_dir = '/home/pi/tensorflow1/Pen/PPVM/pen_dataset/trial_set/'
train_dir = '/home/pi/tensorflow1/Pen/PPVM/pen_dataset/train_set/'
# Pillow
import PIL
from PIL import Image
# Use Pillow library to convert an input jpeg to a 8 bit grey scale image array for processing.
def jpeg_to_8_bit_greyscale(path, maxsize):
        img = Image.open(path).convert('L')   # Convert image to 8-bit grayscale
        # Make aspect ratio as 1:1, by applying image crop.
        # Needs to locate the subject and then crop or scale accordingly.
        WIDTH, HEIGHT = img.size
        if WIDTH != HEIGHT:
                m_min_d = min(WIDTH, HEIGHT)
                img = img.crop((0, 0, m_min_d, m_min_d))
        # Scale the image to the requested maxsize by Anti-alias sampling.
        img.thumbnail(maxsize, PIL.Image.ANTIALIAS)
        return np.asarray(img)
# Load the images
def load_image_dataset(path_dir, maxsize):
        images = []
        labels = []
        os.chdir(path_dir)
        for file in glob.glob("*.jpg"):
                img = jpeg_to_8_bit_greyscale(file, maxsize)
                if re.match('pen.*', file):
                        images.append(img)
                        labels.append(0)
                elif re.match('not_pen.*', file):
                        images.append(img)
                        labels.append(1)
        return (np.asarray(images), np.asarray(labels))
maxsize = 100, 100
(train_images, train_labels) = load_image_dataset(train_dir, maxsize)
(trial_images, trial_labels) = load_image_dataset(trial_dir, maxsize)
class_names = ['PEN', 'NOT PEN']
train_images.shape
(26, 100, 100)
print(train_labels)
trial_images.shape
(14, 100, 100)
print(trial_labels)
# Display the images
def display_images(images, labels):
        plt.figure(figsize=(10,10))
        grid_size = min(25, len(images))
        for i in range(grid_size):
                plt.subplot(5, 5, i+1)
                plt.xticks([])
                plt.yticks([])
                plt.grid(False)
                plt.imshow(images[i], cmap=plt.cm.binary)
                plt.xlabel(class_names[labels[i]])      
display_images(train_images, train_labels)
plt.show()
train_images = train_images / 255.0
trial_images = trial_images / 255.0
# Setting up the layers
model = keras.Sequential([
    keras.layers.Flatten(input_shape=(100, 100)),
        keras.layers.Dense(128, activation=tf.nn.sigmoid),
        keras.layers.Dense(16, activation=tf.nn.sigmoid),
    keras.layers.Dense(2, activation=tf.nn.softmax)
])
sgd = keras.optimizers.SGD(lr=0.01, decay=1e-5, momentum=0.7, nesterov=True)
model.compile(optimizer=sgd,
              loss='sparse_categorical_crossentropy',
              metrics=['accuracy'])
loops=10000
# Trying to create a model
model.fit(train_images, train_labels, epochs=loops)
# Measure accuracy using trial dataset
trial_loss, trial_acc = model.evaluate(trial_images, trial_labels)
print('Trial accuracy:', trial_acc)
predictions = model.predict(trial_images)
print(predictions)
display_images(trial_images, np.argmax(predictions, axis = 1))
plt.show() 
# Re-train if model is not accurate enough
while (trial_acc<0.90):
    loops = loops + 200
    model.fit(train_images, train_labels, epochs=loops)
    trial_loss, trial_acc = model.evaluate(trial_images, trial_labels)
    print('Trial accuracy:', trial_acc)
    predictions = model.predict(trial_images)
    print(predictions)
    display_images(trial_images, np.argmax(predictions, axis = 1))
    plt.show() 
#saving the model
model.save('/home/pi/tensorflow1/Pen/PPVM/save_model/my_model.h5') 
