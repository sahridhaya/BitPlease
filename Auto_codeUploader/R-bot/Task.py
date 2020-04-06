from selenium import webdriver
from selenium.webdriver.support.select import Select
from time import sleep
from os import listdir
from os.path import isfile, join
import os,sys
from secret import pw,userid
from tbc import *

class Robot():
 def __init__(self,username,pw):
  self.browser= webdriver.Firefox(executable_path='/home/ashiq/Downloads/geckodriver-v0.26.0-linux64/geckodriver') #change this path to your path directory containing the binary
  browser = self.browser
  browser.get('https://r.fossee.in')
  sleep(2)
  browser.find_element_by_xpath("//a[contains(text(),'Login')]").click()
  sleep(2)	
  browser.find_element_by_xpath("//input[@id='edit-name']").send_keys(username)
  browser.find_element_by_xpath("//input[@id='edit-pass']").send_keys(pw)
  sleep(1)
  browser.find_element_by_xpath("//input[@id='edit-submit']").click()
  sleep(2)
  browser.find_element_by_xpath("//a[contains(text(),'Textbook Companion Project')]").click()
  sleep(1)
  browser.find_element_by_xpath("//a[contains(text(),'Code Submission')]").click()
  sleep(1)
  browser.find_element_by_xpath("//ul[@class='tabs primary clearfix']//a[contains(text(),'Code Submission')]").click()
  sleep(1)
  #----------------#issue(101)
  mypath = path_to_chapter ###### change this to your file directory path ####
  onlyfiles = [f for f in listdir(mypath) if isfile(join(mypath,f))]
  #str = ".R"
  for file in onlyfiles:
    #print(files)
    self.file_to_upload = file
    file_to_upload = self.file_to_upload #output= Ex9_2_5
    self.code_example = file_to_upload[2:3] + "." + file_to_upload[4:5] + "." + file_to_upload[6:7] #output= 9.2.5
    code_example = self.code_example
    browser.find_element_by_xpath("//ul[@class='tabs primary clearfix']//a[contains(text(),'Code Submission')]").click()
    sleep(1)
    self.combo = Select(self.browser.find_element_by_xpath("//select[@id='edit-number']"))
    self.combo.select_by_value(chapterNo)
    sleep(2)   
    browser.find_element_by_xpath("//input[@id='edit-name']").send_keys(title) #---------->> issue(102)
    #checking condition to select different sections in chapter according to example number  
    sleep(2)    
    if file_to_upload[4:5] == "1": 
     browser.find_element_by_xpath("//input[@id='edit-example-number']").send_keys(code_example)
     sleep(1)
     browser.find_element_by_xpath("//input[@id='edit-example-caption']").send_keys(section1)
    elif file_to_upload[4:5] == "2":
     browser.find_element_by_xpath("//input[@id='edit-example-number']").send_keys(code_example)   
     sleep(1)  
     browser.find_element_by_xpath("//input[@id='edit-example-caption']").send_keys(section2)
    elif file_to_upload[4:5] == "3":
     browser.find_element_by_xpath("//input[@id='edit-example-number']").send_keys(code_example)   
     sleep(1)  
     browser.find_element_by_xpath("//input[@id='edit-example-caption']").send_keys(section3)
    elif file_to_upload[4:5] == "4":
     browser.find_element_by_xpath("//input[@id='edit-example-number']").send_keys(code_example)   
     sleep(1)  
     browser.find_element_by_xpath("//input[@id='edit-example-caption']").send_keys(section4)
    elif file_to_upload[4:5] == "5":
     browser.find_element_by_xpath("//input[@id='edit-example-number']").send_keys(code_example)   
     sleep(1)  
     browser.find_element_by_xpath("//input[@id='edit-example-caption']").send_keys(section5)
    elif file_to_upload[4:5] == "6":
     browser.find_element_by_xpath("//input[@id='edit-example-number']").send_keys(code_example)   
     sleep(1)  
     browser.find_element_by_xpath("//input[@id='edit-example-caption']").send_keys(section6)
    elif file_to_upload[4:5] == "7":
     browser.find_element_by_xpath("//input[@id='edit-example-number']").send_keys(code_example)   
     sleep(1)  
     browser.find_element_by_xpath("//input[@id='edit-example-caption']").send_keys(section7)
    elif file_to_upload[4:5] == "8":
     browser.find_element_by_xpath("//input[@id='edit-example-number']").send_keys(code_example)   
     sleep(1)  
     browser.find_element_by_xpath("//input[@id='edit-example-caption']").send_keys(section8)
     #Add new elif condition here

    self.choose_File = browser.find_element_by_xpath("//input[@id='edit-sourcefile1']")
    self.choose_File.send_keys(os.path.join(mypath,file_to_upload))
    sleep(3)       
    browser.find_element_by_xpath("//input[@id='edit-submit']").click()  
    sleep(1)	
   
  sleep(10)
  browser.quit()


Robot(userid,pw)

