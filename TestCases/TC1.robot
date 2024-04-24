*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${browser}  Chrome
${url}     https://demo.nopcommerce.com/

*** Test Cases ***
Register Test                              #1st Test case
    Open Browser  ${url}    ${browser}     # To open browser
    Maximize Browser Window
    title should be     nopCommerce demo store             #Ttile comparison
    Click Link  //a[text()="Register"]

    Select Radio Button     Gender   F
   # Click Element   xpath=//*[@id="gender-female"]        #Alternate way to perform action on radio button
    ${"first name"}     set variable   xpath=//*[@id="FirstName"]   # create variable for first name xpath storing
    Element Should Be Visible   ${"first name"}                    #to check input box available or not
    sleep   5
    Clear Element Text   ${"first name"}                           # To clear input box
    sleep   3
    Input Text  ${"first name"}    Rashmi
    Input Text  xpath=//*[@id="LastName"]     Ghaware
    Select Birth Date From Dropdown  //*[@name='DateOfBirthDay']  3
    Select Birth Date From Dropdown  //*[@name='DateOfBirthMonth']  11
    Select Birth Date From Dropdown  //*[@name='DateOfBirthYear']   1998
    Input Text      xpath=//*[@name='Email']   explore858@gmail.com
    Input Text      xpath=//*[@name='Company']   XYZ
    Input Text      xpath= //*[@name='Password']  Test@123
    Input Text      xpath= //*[@name='ConfirmPassword']    Test@123
    Click Element  xpath=//button[text()='Register']



Example Test Case                        #2nd Test Case
    Log     Hello World!!!
    Click Link    xpath://a[text()='Log in']
    Input Text    //*[@id="Email"]    explore858@gmail.com
    Input Text    //*[@id="Password"]    Test@123
    sleep  9
    Select Checkbox     RememberMe                 #To select checkbox
    Click Element    xpath://button[text()="Log in"]
    Close Browser


*** Keywords ***
Select Birth Date From Dropdown
    [Arguments]    ${dropdown_locator}    ${option_value}
    Select From List By Value    ${dropdown_locator}    ${option_value}
