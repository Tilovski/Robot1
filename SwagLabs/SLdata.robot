*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}      https://www.saucedemo.com/
${browser}      chrome

*** Keywords ***
Opening browser
    Open Browser    ${url}  ${browser}
    Maximize Browser Window
Close browesrs
    Close Browser
Input username
    [Arguments]     ${username}
    Input Text    id:user-name    ${username}
Input pwd
    [Arguments]     ${password}
    Input Text    id:password    ${password}
Click login button
    Click Button    xpath://*[@id="login-button"]
Click logout button
    Click Button    Xpath://*[@id="react-burger-menu-btn"]
    Click Button    Xpath://*[@id="logout_sidebar_link"]
Error message
    Page Should Contain    Epic sadface

