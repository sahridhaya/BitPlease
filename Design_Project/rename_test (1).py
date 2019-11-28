import os

i=0

for filename in os.listdir("/home/aswin/Design_Project/pen_dataset/test_set/"):
    dst = "pen" + str(i) + ".jpg"
    src = '/home/aswin/Design_Project/pen_dataset/test_set/' + filename
    dst = '/home/aswin/Design_Project/pen_dataset/test_set/' + dst
    
    os.rename(src,dst)
    i+=1