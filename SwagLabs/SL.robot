*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}      https://www.saucedemo.com/
${browser}      chrome

*** Test Cases ***
Testing Swag Labs with valid information
        Open Browser    ${url}  ${browser}
        Maximize Browser Window
Input username
        Input Text    id:user-name    standard_user
Input password
        Input Text    id:password    secret_sauce
Click log in button
        Click Button    id:login-button
#User should bee able to log in
        Close Browser
*** Keywords ***