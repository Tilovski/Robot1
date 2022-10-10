*** Settings ***
Library     SeleniumLibrary
Library    String

*** Variables ***
${url}  https://demo.nopcommerce.com/
${browser}      chrome
${NUMBERS}      0123456789

*** Test Cases ***
Opening browser
    Open Browser    ${url}  ${browser}
    Maximize Browser Window
Click on register    
    Click on register
Select gender    
    Gender
First and Last name    
    First name
    Last name
Date of birth    
    Day Of Birth
    Month Of Birth
    Year of Birth
Input Email    
    Email
Select chekbox    
    Newsletter
Input and confirm password    
    Password
Click register
    Register
Click continue
    Continue
Select Item
    Computer
IDD
    Select


*** Keywords ***
Click on register
    Click Link    class:ico-register
Gender
    Select Radio Button    Gender    M
First name
    Input Text    name:FirstName    Martin
Last name
    Input Text    name:LastName    Tilovski
Day Of Birth
    Select From List By Label    name:DateOfBirthDay    29
Month Of Birth
    Select From List By Label    name:DateOfBirthMonth      March
Year of Birth
    Select From List By Label    name:DateOfBirthYear       2001
Email
        ${random_broj} =  Generate Random String     3   [NUMBERS]
    Input Text    id:Email    m.tilovski${random_broj}@gmail.com
Newsletter
    Select Checkbox    id:Newsletter
Password
    Input Text    name:Password    12345678
    Input Text    name:ConfirmPassword    12345678
Register
    Click Button    name:register-button
Continue
    Click Element    xpath:/html/body/div[6]/div[3]/div/div/div/div[2]/div[2]/a
Computer
    Click Element    xpath:/html/body/div[6]/div[2]/ul[1]/li[1]/a
    Click Image    xpath:/html/body/div[6]/div[3]/div/div[3]/div/div[2]/div[1]/div/div[2]/div/div/a/img
    Select From List By Index    id:products-orderby    1
    Select From List By Label    id:products-pagesize   9
Select
    Click Link    xpath:
    Click Button    id:add-to-cart-button-9








