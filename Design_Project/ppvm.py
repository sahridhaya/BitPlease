
def switch1():
    import RPi.GPIO as GPIO          #Import GPIO library
    import time                      #Import time library
    GPIO.setmode(GPIO.BOARD)         #Set GPIO pin numbering
    GPIO.setup(11, GPIO.IN, pull_up_down=GPIO.PUD_UP) #Enable input and pull up resistors
    while True:
        input_state = GPIO.input(11) #Read and store value of input to a variable
        if input_state == False:     #Check whether pin is grounded
           print('Button Pressed')   #Print 'Button Pressed'
           time.sleep(5)             #Delay of 0.3s
           #imgcap()
           execute()
           

# Switch

def imgcap():
        # Importing all necessary libraries 
    import cv2 
    import time
    # Read the video from specified path 
    cam = cv2.VideoCapture(0) 
    
    time.sleep(2)
    
    ret,frame = cam.read() 
    name = '/home/pi/tensorflow1/Pen/PPVM/pen_dataset/test_set/0.jpg'
    print ('Creating...' + name)
    cv2.imwrite(name, frame) 
        
        
    
    # Release all space and windows once done 
    cam.release() 
    cv2.destroyAllWindows() 


def execute():
    # TensorFlow and tf.keras
    import tensorflow as tf
    
    
    # Helper libraries
    import numpy as np
    import matplotlib.pyplot as plt
    import glob, os
    import h5py
    
    # Directories of datasets
    test_dir = '/home/pi/tensorflow1/Pen/PPVM/pen_dataset/test_set/'
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
    
    # Load test image
    def load_image_dataset_test(path_dir, maxsize):
            images = []
            os.chdir(path_dir)
            for file in glob.glob("*.jpg"):
                    img = jpeg_to_8_bit_greyscale(file, maxsize)
                    images.append(img)
            return (np.asarray(images))
    
    # Rename as Pen and add to training dataset
    def Rename_pen():

    
        for filename in os.listdir(test_dir):
            dst = "pen" + str(l) + ".jpg"
            src = test_dir + filename
            dst = train_dir + dst
            
            os.rename(src,dst)
    
    # Rename as Not Pen and add to training dataset
    def Rename_not_pen():
    
        for filename in os.listdir(test_dir):
            dst = "not_pen" + str(l) + ".jpg"
            src = test_dir + filename
            dst = train_dir + dst
            
            os.rename(src,dst)
    
        
    maxsize = 100, 100
    
    class_names = ['PEN', 'NOT PEN']
    
    test_images = load_image_dataset_test(test_dir, maxsize)
    
    #model = tf.keras.models.load_model('/home/aswin/Design_Project/pen_dataset/save_model/')
    
    #model = tf.saved_model.load("/home/aswin/Design_Project/pen_dataset/save_model/")
    
    new_model = tf.keras.models.load_model('home/pi/tensorflow1/Pen/PPVM/save_model/my_model.h5')
    
    
    # Predict the images in test dataset
    predictions = np.round(new_model.predict(test_images))
    print(predictions)
    
    # Display the prediction
    #display_images(test_images, np.argmax(predictions, axis = 1))
    #plt.show()
    
    # Rename and move to training dataset for improving accuracy
    if (predictions[0,0]==1):
        Rename_pen()
        #import Servo_left
        file = open("/home/pi/tensorflow1/Pen/PPVM/counter.txt","a")
        file.write('0')
        file.close()
        
    elif (predictions[0,0]==0):
        Rename_not_pen()
        #import Servo_right
    
switch1()    

file = open("/home/pi/tensorflow1/Pen/PPVM/counter.txt","r")
data = file.read()
l = len(data)
file.close()

while(not(l==3)):
        
    imgcap()
    execute()
    
    file = open("/home/pi/tensorflow1/Pen/PPVM/counter.txt","r")
    data = file.read()
    l = len(data)
    file.close()
    print(len(data))
    #continue

    
open('/home/pi/tensorflow1/Pen/PPVM/counter.txt', 'w').close()

# servo_roll_out    