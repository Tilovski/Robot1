*** Settings ***
Library     SeleniumLibrary
Library    String
Resource    ../DemoNop1/Locators.robot

*** Keywords ***
Opening browser and navigate to site

    Open Browser    ${URL}      ${BROWSER}
    Maximize Browser Window

Register with new user and Log in

    Click Element    ${REGISTER}
    Click Element    ${GENDER_MALE}
    Input Text    ${FIRST_NAME}    Martin
    Input Text    ${LAST_NAME}    Tilovski
    Select From List By Label    ${DAY_OF_BIRTH}    29
    Select From List By Label    ${MONTH_OF_BTRTH}      March
    Select From List By Label    ${YEAR_OF_BIRTH}       2001
    ${RANDOM_NUMBER} =  Generate random string      3       [NUMBERS]
    Input Text    ${EMAIL}    m.tilovski${RANDOM_NUMBER}@gmail.com
    Input Text    ${COMPANY_NAME}     ${EMPTY}
    Click Element    ${NEWS_LETTER}
    Scroll Element Into View    ${PASSWORD}
    Input Text    ${PASSWORD}     123456789
    Input Text    ${CONFIRM_PASSWORD}    123456789
    Click Button    ${REGISTER_BUTTON}
    Click Element    ${LOG_OUT_BUTTON}
    Click Element    ${LOG_IN_BUTTON}
    Input Text    ${EMAIL}    m.tilovski${RANDOM_NUMBER}@gmail.com
    Input Text    ${PASSWORD}     123456789
    Click Button    ${LOG_IN}
    

Forgot pasword
    Click Element    ${LOG_IN_BUTTON}
    Click Element    ${FROGOT_PASSWORD}
    ${RANDOM_NUMBER} =  Generate random string      3       [NUMBERS]
    Input Text    ${EMAIL}    m.tilovski${RANDOM_NUMBER}gmail.com
    Click Button    ${RECOVER_BUTTON}

Buying Item-Computer-Desktop-Build your own PC
    Click Element    ${COMPUTERS}
    Click Element    ${DESK_TOP}
    Click Element    ${PC1}
    Scroll Element Into View    ${PROCESSOR}
    Select From List By Index     ${PROCESSOR}   2
    Select From List By Index    ${RAM}     2
    Click Element    ${HDD_400}
    Click Element    ${TOTAL_COMANDER}
    Scroll Element Into View    ${ADD_TO_CART1}
    Click Button    ${ADD_TO_CART1}
    Go Back
Chek out
    Click Element    ${SHOPING_CART}
    Click Element    ${TERMS_OD_SERVICE}
    Click Element    ${CHEK_OUT}
    Select From List By Label    ${COUNTRY}     Macedonia
    Input Text    ${CITY}     Bitola
    Input Text    ${ADDRESS1}     4-ti juli 12A
    Input Text    ${ZIP_CODE}    7000
    Input Text    ${PHONE_NUMBER}    076-554-669
    Click Button    ${CHEK_OUT_CONTINUE}
Shipping and payment
    Wait Until Page Contains    Next Day Air 
    Click Element    ${NEXT_DAY_AIR}
    Click Button    ${SHIPPING_CONTINUE}
    Wait Until Page Contains    Credit Card
    Click Element    ${CREDIT_CARD}
    Click Button    ${PAY_CONTINUE}
    Wait Until Page Contains    Select credit card:
    Select From List By Index    ${CREDIT_CARD_TYPE}    2
    Input Text    ${CARDHOLDER_NAME}    Martin
    Input Text    ${CARD_NUMBER}    374245455400126
    Select From List By Label    ${EXPIRE_MONTH}    07
    Select From List By Label    ${EXPIRE_YEAR}     2025
    Input Text    ${CARD_CODE}    837
    Click Button    ${CONFIRM_CONTINUE}
    Wait Until Page Contains    Shipping Address
    Scroll Element Into View    ${FINAL_CONFIRM}
    Click Button    ${FINAL_CONFIRM}


