*** Settings ***
Library     SeleniumLibrary
Library     String
Resource    ../Ile/locaors.robot

*** Keywords ***

Register New User
        ${random_number} =  Generate random string   3   [NUMBERS]
#        Click Element    ${ACCOUNT_REGISTER}
#        Click Element    ${REGISTER}
        Wait Until Page Contains    Register
        Input Text    ${FIRST_NAME}    Martin
        Input Text    ${LAST_NAM}     Tilovski
        Input Text    ${EMAIL}     martin.tilovski${random_number}@gmail.com
        Input Text    ${CONFIRM_EMAIL}     martin.tilovski${random_number}@gmail.com
        Input Text    ${USER_NAME}    USER@34233
        Select From List By Label    ${CONTRY_FIELD}    North Macedonia
        Select From List By Index    ${TIME_ZONE_FIELD}     2
        Click Element    ${NEWS_LETTER}
        Scroll Element Into View     ${PASSWORD}
        Input Text    ${PASSWORD}    123456789
        Input Text    ${CONFIRM_PASSWORD}    123456789
        Select From List By Index    ${MY_COMPANY}  2
        Select From List By Index   ${MY_MAIN_ACTIVITY}     1
        Wait Until Page Contains    How much time has your company been developing extensions?
        Select From List By Index   ${COMPANY_DEVELOP}  3
        Click Element    ${CLICK_NO} 
        Select From List By Index   ${HOW_MANY_PPL}     3
        Scroll Element Into View    ${CLICK_REGISTER}
        Click Element    ${CLICK_REGISTER}
        Wait Until Page Contains    Almost done!
        Log To Console    User registerd successfuly




