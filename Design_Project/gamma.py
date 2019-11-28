import numpy as np
#import argparse
import cv2
test_dir='/home/pi/tensorflow1/Pen/PPVM/pen_dataset/test_set/'

def adjust_gamma(image,gamma=1.0):
    invGamma = 1.0/gamma
    table = np.array([((i/255.0) ** invGamma) *255
                      for i in np.arange(0,256)]).astype("uint8")
    return cv2.LUT(image, table)

#ap = argparse.ArgumentParser()
#ap.add_argument("-i" , "--image", required =True,
                #help="path to input image")
#args = vars(ap.parse_args())
original = cv2.imread(test_dir + '0.jpg')

adjusted = adjust_gamma(original, gamma=2.5)
cv2.imshow("Images", np.hstack([original, adjusted]))
cv2.waitKey(0)