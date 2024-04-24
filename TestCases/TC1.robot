*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${CHROME_DRIVER_PATH}    D:\Software\chromedriver-win64\chromedriver.exe

*** Test Cases ***
Register Test
    Open Browser  https://demo.nopcommerce.com/    Chrome
    Click Link  //a[text()="Register"]
    Click Element   xpath=//*[@id="gender-female"]
    Input Text  //*[@id="FirstName"]    Rashmi
    Input Text  //*[@id="LastName"]     Ghaware
    Select Birth Date From Dropdown  //*[@name='DateOfBirthDay']  3
    Select Birth Date From Dropdown  //*[@name='DateOfBirthMonth']  11
    Select Birth Date From Dropdown  //*[@name='DateOfBirthYear']   1998
    Input Text      //*[@name='Email']   explore858@gmail.com
    Input Text      //*[@name='Company']   XYZ
    Input Text       //*[@name='Password']  Test@123
    Input Text      //*[@name='ConfirmPassword']    Test@123
    Click Element  //button[text()='Register']



Example Test Case
    Log     Hello World!!!
    Open Browser    https://demo.nopcommerce.com/    Chrome
    Click Link    xpath://a[text()='Log in']
    Input Text    //*[@id="Email"]    explore858@gmail.com
    Input Text    //*[@id="Password"]    Test@123
    Click Element    xpath://button[text()="Log in"]
    Close Browser


*** Keywords ***
Select Birth Date From Dropdown
    [Arguments]    ${dropdown_locator}    ${option_value}
    Select From List By Value    ${dropdown_locator}    ${option_value}
