*** Settings ***
Library     SeleniumLibrary
Library    String


*** Variables ***
#URL
${URL}               https://www.nopcommerce.com/en
${URL_REGISTER}      https://www.nopcommerce.com/en/register?returnUrl=%2Fen%2Fregister-result%2F2
${BROWSER}           chrome

#navigation tabs
${ACCOUNT_REGISTER}  //*[@id="register-page"]/body/div[7]/header/nav/ul/li[3]/span/span/svg/path
${REGISTER}          //*[@id="register-page"]/body/div[7]/header/nav/ul/li[3]/ul/li[2]/a/span

#register
${FIRST_NAME}        //*[@id="FirstName"]
${LAST_NAM}          //*[@id="LastName"]
${EMAIL}             //*[@id="Email"]
${CONFIRM_EMAIL}     //*[@id="ConfirmEmail"]
${USER_NAME}         //*[@id="Username"]
${CONTRY_FIELD}      //*[@id="CountryId"]
${TIME_ZONE_FIELD}   //*[@id="TimeZoneId"]
${NEWS_LETTER}       //*[@id="register-page"]/body/div[7]/section/div/div/div/div/div/div[2]/form/div/div[1]/div[2]/div[8]/div/label
${PASSWORD}          //*[@id="Password"]
${CONFIRM_PASSWORD}  //*[@id="ConfirmPassword"]
${CLICK_REGISTER}    //*[@id="register-button"]
${MY_COMPANY}        //*[@id="Details_CompanyIndustryId"]
${COMPANY_DEVELOP}   //*[@id="Details_ExtensionsDevelopmentPeriodId"]
${CLICK_NO}          //*[@id="register-page"]/body/div[7]/section/div/div/div/div/div/div[2]/form/div/div[3]/div[11]/div[2]/div[2]/label
${MY_MAIN_ACTIVITY}  //*[@id="Details_CompanyRoleId"]
${HOW_MANY_PPL}      //*[@id="Details_CompanySizeId"]