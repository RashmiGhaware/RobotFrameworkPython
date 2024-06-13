*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/Locators.py

*** Keywords ***
Open my browser
    [Arguments]    ${SiteUrl}    ${Browser}
    Open Browser    ${SiteUrl}    ${Browser}
    Maximize Browser Window

Execute JavaScript
    [Arguments]    ${script}    @{args}
    Execute JavaScript    ${script}    @{args}

Click Username
    Element Should Be Visible   ${txt_loginUserNAme}
    sleep     5
    clear element text    ${txt_loginUserNAme}

Enter Username
    [Arguments]    ${userName}
    Wait Until Element Is Visible    ${txt_loginUserNAme}    10 seconds
    Input Text    ${txt_loginUserNAme}    ${userName}

Enter Password
    [Arguments]    ${password1}
    Input Text    ${txt_password}    ${password1}

Click Sign
    Click Button    ${button_LogIn}


Close my browsers
    Close All Browsers
