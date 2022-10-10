*** Settings ***
Library     SeleniumLibrary
Library     String
Resource    ../OrangeHRM/Locator.robot

*** Keywords ***
Opening browser 1
    Open Browser    ${URL}      ${BROWSER}
    Maximize Browser Window
Log in
    Wait Until Page Contains   Username
    Input Text    ${USERNAME}    Admin
    Input Text    ${PASSWORD}    admin123
    Click Button     ${LOG_IN}

Searching employee
    Wait Until Page Contains    Employee Information
    Click Element    ${ADMIN}
    Wait Until Page Contains    System Users
    Click Element    ${USERNAME_ADMIN}
    Input Text    ${USERNAME_ADMIN}    Cassidy.Hope
    Click Element   ${USER_ROLE_ADMIN}
    Click Element    ${EMPLOYEE_NAME_ADMIN}
    Input Text    ${EMPLOYEE_NAME_ADMIN}    Cassidy Hope
    Select From List By Index    ${STATUS_ADMIN}