*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}      chrome
${url}          https://rahulshettyacademy.com/AutomationPractice/

*** Test Cases ***
Extract Data From Web Table
    Open Browser    ${url}     ${browser}
    ${table_rows}=    Get WebElements    xpath://table[@id='product']/tbody/tr
    FOR    ${row}    IN    @{table_rows}
        ${columns}=    Get WebElements    xpath=.//tdparent=${row}
        ${instructor}=    Get Text    ${columns}[1]
        ${course}=    Get Text    ${columns}[2]
        ${price}=    Get Text    ${columns}[3]
        Log    Instructor: ${instructor}    Course: ${course}    Price: ${price}
    END
    Close Browser