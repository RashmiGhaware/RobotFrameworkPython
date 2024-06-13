*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/LoginKeywords.robot

*** Variables ***
${Browser}    chrome
${SiteUrl}    https://demo.nopcommerce.com/login?returnUrl=%2F
${User}       jon@gmail.com
${Password}   Test@123

*** Test Cases ***
LoginTest
    Open my browser    ${SiteUrl}    ${Browser}
    Click Username
    Enter Username    ${User}
    Enter Password    ${Password}
    Click Sign
    Sleep    3 seconds
    Close my browsers
