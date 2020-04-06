Pre-requisites:

-> python3
-> Install Selenium package for python3 (preferable version: >= selenium 3.141.0 )
    $ pip install selenium 
-> Download Selenium Webdriver for browser (PS: firefox is preferred)   
    $ Firefox: https://github.com/mozilla/geckodriver/releases  (if you are using Chrome, there are minor changes within the code)

-> Extract the Webdriver and check if the binary file is executable
    $ chmod +x geckodriver
    
->Ensure that your code naming conventions are as follows: 
    * Ex9_2_5 ---> chapter 9 , section 2, example 5   
--------------------------------------------------------------------------------------------- 

What next??

-> Add the path to the code (open Task.py)
    self.browser= webdriver.Firefox(executable_path='/your_path/geckodriver-v0.26.0-linux64/geckodriver')

-> In 'secret.py' add your credentials of R-tbc Login
-> In 'tbc.py' change the variable names according to your tbc
-> PS: Apparently the limit of adding sections of chapter is limited to '8'. You can add this feature by using
       below instructions

    elif file_to_upload[4:5] == "9":
     browser.find_element_by_xpath("//input[@id='edit-example-number']").send_keys(code_example)   
     sleep(1)  
     browser.find_element_by_xpath("//input[@id='edit-example-caption']").send_keys(section9)

--------------------------------------------------------------------------------------------------
Troubleshooting !!!

-> At line:44 at [@id='edit-name'], if error occurs such as "unable to find location..." 
    change the element id as following:

==> browser.find_element_by_xpath("//input[@id='edit-name--2']").send_keys(title)
    
PS: This usually happens if you are running the code more than once for a single chapter. R website has a feature to automatically
    update the 'Title name' therefore the element id changes from "@id='edit-name" to "@id='edit-name--2"










IMPORTANT: This code is customized to work for 'https://r.fossee.in' website.  

