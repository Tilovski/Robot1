*** Settings ***
Library     SeleniumLibrary
Library    String


*** Variables ***
#BROWSER AND URL

${BROWSER}              chrome
${URL}                  https://demo.nopcommerce.com/

#HOME PAGE

${REGISTER}             class=ico-register
${LOG_IN}               class=login-button
${WISH_LIST}            /html/body/div[6]/div[1]/div[1]/div[2]/div[1]/ul/li[3]/a/span[1]
${SHOPING_CART}         //*[@id="topcartlink"]/a/span[1]
${SEARCH_STORE}         //*[@id="small-searchterms"]
${SEARCH_BUTTON}        //*[@id="small-search-box-form"]/button
${CATEGORYS}            xpath=/html/body/div[6]/div[2]/div
${COMPUTERS}            xpath=/html/body/div[6]/div[2]/ul[1]/li[1]/a
${ELECTRONICS}          xpath=/html/body/div[6]/div[2]/ul[2]/li[2]/a
${APPAREL}              xpath=/html/body/div[6]/div[2]/ul[2]/li[3]/a
${DIGITAL_DOWNLOAD}     xpath=/html/body/div[6]/div[2]/ul[2]/li[4]/a
${BOOKS}                xpath=/html/body/div[6]/div[2]/ul[2]/li[5]/a
${JEWELRY}              xpath=/html/body/div[6]/div[2]/ul[2]/li[6]/a
${GIFTCARDS}            xpath=/html/body/div[6]/div[2]/ul[2]/li[7]/a
${MANUFACTURERS}        xpath=/html/body/div[6]/div[3]/div/div[2]/div[2]/div[1]/strong
${MANUFACTURERS_APPLE}  xpath=/html/body/div[6]/div[3]/div/div[2]/div[2]/div[2]/ul/li[1]/a
${MANUFACTURERS_HP}     xpath=/html/body/div[6]/div[3]/div/div[2]/div[2]/div[2]/ul/li[2]/a
${VIEW_ALL}             xpath=/html/body/div[6]/div[3]/div/div[2]/div[2]/div[2]/div/a

#REGISTER

${GENDER_MALE}          //*[@id="gender-male"]
${GENDER_FEMALE}        //*[@id="gender-female"]
${FIRST_NAME}           //*[@id="FirstName"]
${LAST_NAME}            //*[@id="LastName"]
${DAY_OF_BIRTH}         name=DateOfBirthDay
${MONTH_OF_BTRTH}       name=DateOfBirthMonth
${YEAR_OF_BIRTH}        name=DateOfBirthYear
${EMAIL}                //*[@id="Email"]
${COMPANY_NAME}         //*[@id="Company"]
${NEWS_LETTER}          //*[@id="Newsletter"]
${PASSWORD}             //*[@id="Password"]
${CONFIRM_PASSWORD}     //*[@id="ConfirmPassword"]
${REGISTER_BUTTON}      //*[@id="register-button"]
${CONTINUE_BUTTON}      xpath=/html/body/div[6]/div[3]/div/div/div/div[2]/div/div[3]/button

#LOG IN

${EMAIL}                //*[@id="Email"]
${PASSWORD}             //*[@id="Password"]
${REMEMBER_ME?}         //*[@id="RememberMe"]
${FROGOT_PASSWORD}      class=forgot-password
${LOG_IN_BUTTON}        class=ico-login
${LOG_OUT_BUTTON}       class=ico-logout
${LOG_IN}               class=login-button

#FROGOT PASSWORD

${EMAIL}                //*[@id="Email"]
${RECOVER_BUTTON}       xpath=/html/body/div[6]/div[3]/div/div/div/div[2]/form/div[2]/button

#COMPUTERS

${DESK_TOP}             xpath=/html/body/div[6]/div[3]/div/div[3]/div/div[2]/div[1]/div/div[1]/div/h2/a

#DESK TOP PC

${PC1}                  xpath=/html/body/div[6]/div[3]/div/div[3]/div/div[2]/div[2]/div[2]/div/div/div[1]/div
${ADD_TO_CART1}         //*[@id="add-to-cart-button-1"]

#SPECS

${PROCESSOR}            //*[@id="product_attribute_1"]
${RAM}                  //*[@id="product_attribute_2"]
${HDD_320}              //*[@id="product_attribute_3_6"]
${HDD_400}              //*[@id="product_attribute_3_7"]
${OS_HOME}              //*[@id="product_attribute_4_8"]
${OS_PREMIUM}           //*[@id="product_attribute_4_9"]
${MICROSOFT}            //*[@id="product_attribute_5_10"]
${ACROBAT_READER}       //*[@id="product_attribute_5_11"]
${TOTAL_COMANDER}       //*[@id="product_attribute_5_12"]

${PC2}                  xpath=/html/body/div[6]/div[3]/div/div[3]/div/div[2]/div[2]/div[2]/div/div/div[2]/div
${ADD_TO_CART2}         //*[@id="add-to-cart-button-2"]

${PC3}                  xpath=/html/body/div[6]/div[3]/div/div[3]/div/div[2]/div[2]/div[2]/div/div/div[2]/div
${ADD_TO_CART3}         //*[@id="add-to-cart-button-3"]

${NOTE_BOOKS}           xpath=/html/body/div[6]/div[3]/div/div[3]/div/div[2]/div[1]/div/div[2]/div/h2/a
${SOFTWARE}             xpath=/html/body/div[6]/div[3]/div/div[3]/div/div[2]/div[1]/div/div[3]/div/h2/a

#SHOPPING CART

${CHEK_OUT}             //*[@id="checkout"]
${TERMS_OD_SERVICE}     //*[@id="termsofservice"]
${DISCOUNT_CODE_TXT}    //*[@id="discountcouponcode"]
${APLAY_COUPON}         //*[@id="applydiscountcouponcode"]
${GIFT_CARD_TXT}        //*[@id="giftcardcouponcode"]
${ADD_GIFT_CARD}        //*[@id="applygiftcardcouponcode"]

#CHEK OUT

${COUNTRY}              //*[@id="BillingNewAddress_CountryId"]
${STATE}                //*[@id="BillingNewAddress_StateProvinceId"]
${CITY}                 //*[@id="BillingNewAddress_City"]
${ADDRESS1}             //*[@id="BillingNewAddress_Address1"]
${ADDRESS2}             //*[@id="BillingNewAddress_Address2"]
${ZIP_CODE}             //*[@id="BillingNewAddress_ZipPostalCode"]
${PHONE_NUMBER}         //*[@id="BillingNewAddress_PhoneNumber"]
${FAX}                  //*[@id="BillingNewAddress_FaxNumber"]
${CONFIRM}              //*[@id="confirm-order-buttons-container"]/button
${CHEK_OUT_CONTINUE}    //*[@id="billing-buttons-container"]/button[4]

#SHIPPING

${GROUND}               id=shippingoption_0
${NEXT_DAY_AIR}         id=shippingoption_1
${2ND_DAY_AIR}          id=shippingoption_2
${SHIPPING_CONTINUE}    //*[@id="shipping-method-buttons-container"]/button
#PAYMENT

${CHEK_MONEY}           id=paymentmethod_0


${CREDIT_CARD}          id=paymentmethod_1
${CREDIT_CARD_TYPE}     //*[@id="CreditCardType"]
${CARDHOLDER_NAME}      //*[@id="CardholderName"]
${CARD_NUMBER}          //*[@id="CardNumber"]
${EXPIRE_MONTH}         //*[@id="ExpireMonth"]
${EXPIRE_YEAR}          //*[@id="ExpireYear"]
${CARD_CODE}            //*[@id="CardCode"]
${PAY_CONTINUE}         //*[@id="payment-method-buttons-container"]/button
${CONFIRM_CONTINUE}     //*[@id="payment-info-buttons-container"]/button
${FINAL_CONFIRM}        //*[@id="confirm-order-buttons-container"]/button
