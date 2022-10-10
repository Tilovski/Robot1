*** Settings ***
Library     SeleniumLibrary
Library     String
Resource    ../NopPRO/Testcases.robot
Resource    ../NopPRO/locaors.robot
Resource    keywords.robot

*** Test Cases ***
Register User
    Open Browser    ${URL_REGISTER}  ${BROWSER}
    Maximize Browser Window
    Register New User



