*** Settings ***
Library     SeleniumLibrary
Library    String

*** Variables ***
${url}  https://www.nopcommerce.com/en/demo
${browser}      chrome

*** Test Cases ***


Opening Browser and navigating to site
    Open Browser    ${url}      ${browser}
    Maximize Browser Window
Opening register
#    Wait Until Page Contains    Laptops
   Click Element    xpath:/html/body/div[7]/header/nav/ul/li[3]
   Click Element    xpath://*[@id="demo-page"]/body/div[7]/header/nav/ul/li[3]/ul/li[2]/a/span
   Wait Until Page Contains    Register
   Input Text    name:FirstName    Martin
   Input Text    name:LastName    Tilovski
Input Email
    ${random_number} =  Generate Random String   3    [NUMBERS]
    Input Text    //*[@id="Email"]    m.tilovski${random_number}@gmail.com
    Input Text    name:ConfirmEmail     m.tilovski${random_number}@gmail.com
Input username
    ${random_char} =  Generate Random String   4   [NUMBERS]
    Input Text    name:Username    Martin${random_char}
    Click Button    id:check-availability-button
    Wait Until Page Contains    Username available
Select country
    Select From List By Label    id:CountryId   North Macedonia
Select timezone
    Select From List By Label    id:TimeZoneId      (UTC+00:00) Sao Tome
Selecting news checkbox
    Click Element    xpath://*[@id="register-page"]/body/div[7]/section/div/div/div/div/div/div[2]/form/div/div[1]/div[2]/div[8]/div/label
Input password
    Input Text    id:Password    12345678
Confirming password
    Input Text    id:ConfirmPassword    12345678
Inuting Account Details
    Select From List By Index    id:Details_CompanyIndustryId   4
Clicking Register Button
    Click Button    //*[@id="register-button"]
