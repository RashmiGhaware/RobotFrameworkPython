*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${CHROME_DRIVER_PATH}    D:\Software\chromedriver-win64\chromedriver.exe

*** Test Cases ***
Example Test Case
    Log     Hello World!!!
    Open Browser    https://demo.nopcommerce.com/    Chrome
    Click Link    xpath://a[text()='Log in']
    Input Text    //*[@id="Email"]    rashmighaware1994@gmail.com
    Input Text    //*[@id="Password"]    Test@123
    Click Element    xpath://button[text()="Log in"]
    Close Browser
