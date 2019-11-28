# Importing all necessary libraries 
import cv2 
import os 
import time
# Read the video from specified path 
cam = cv2.VideoCapture(0) 

try: 
    
    # creating a folder named data 
    if not os.path.exists('data'): 
        os.makedirs('data') 

# if not created then raise error 
except OSError: 
    print ('Error: Creating directory of data') 

# frame 

time.sleep(2)
ret,frame = cam.read()
#frame = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)
#frame = cv2.flip(frame,0)
name = '/home/pi/tensorflow1/Pen/PPVM/pen_dataset/test_set/0.jpg'
print ('Creating...' + name)
cv2.imwrite(name, frame) 

    

# Release all space and windows once done 
cam.release() 
cv2.destroyAllWindows()
