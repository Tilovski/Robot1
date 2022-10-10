*** Settings ***
Library     SeleniumLibrary
*** Variables ***
${url}      https://www.saucedemo.com/
${browser}      chrome

*** Test Cases ***
Loging in and ordering 2 items


Opening browser
    Open Browser    ${url}  ${browser}
    Maximize Browser Window
Input username and password
    Input Text    id:user-name    standard_user
    Input Text    id:password   secret_sauce
Click log in button
    Click Button    xpath://*[@id="login-button"]   #User should be able to log in
Sort items by price-Low to high
    Select From List By Index    Xpath://*[@id="header_container"]/div[2]/div[2]/span/select    3
Adding items to cart
    Click Button    id:add-to-cart-sauce-labs-onesie      #Item name: Sauce Labs Onesie
    Click Button    id:add-to-cart-sauce-labs-fleece-jacket   #Item name: Sauce Labs Fleece Jacket
Navigateing to cart
    Click Element    id:shopping_cart_container
Cheking out
    Click Button    name:checkout
Writing credentials
    Input Text    id:first-name    Martin
    Input Text    id:last-name    Tilovski
    Input Text    id:postal-code    7000
Click Finish
    Click Element  id:finish
Closeing browser
    Close Browser

*** Keywords ***


