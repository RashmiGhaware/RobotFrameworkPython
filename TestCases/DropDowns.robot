*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}      chrome
${url}          https://rahulshettyacademy.com/AutomationPractice/


*** Test Cases ***
Handling DropDowns
      Open Browser      ${url}     ${browser}
      Maximize Browser Window

      Select From List By Label     dropdown-class-example      Option1
      sleep     5
      Select From List By Value     dropdown-class-example      option2
      sleep     5
      Select From List By Index     dropdown-class-example      3
