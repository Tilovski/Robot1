*** Settings ***
Library     SeleniumLibrary
Library     String

*** Variables ***
#Log in locators

${URL}                      https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${BROWSER}                  chrome
${USERNAME}                 name=username
${PASSWORD}                 name=password
${LOG_IN}                   //*[@id="app"]/div[1]/div/div[1]/div/div[2]/div[2]/form/div[3]/button

#Admins

${ADMIN}                    //*[@id="app"]/div[1]/div[1]/aside/nav/div[2]/ul/li[1]/a/span
${USERNAME_ADMIN}           //*[@id="app"]/div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[1]/div/div[1]/div/div[2]/input
${EMPLOYEE_NAME_ADMIN}      //*[@id="app"]/div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[1]/div/div[3]/div/div[2]/div/div/input
${USER_ROLE_ADMIN}          //*[@id="app"]/div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[1]/div/div[2]/div/div[2]
${STATUS_ADMIN}             //*[@id="app"]/div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[1]/div/div[4]/div/div[2]/div/div/div[1]
${RESET_BUTTON_ADMIN}       //*[@id="app"]/div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[2]/button[1]
${SEARCH_BUTTON_ADMIN}      //*[@id="app"]/div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[2]/button[2]
${ADD_BUTTON_ADMIN}         //*[@id="app"]/div[1]/div[2]/div[2]/div/div[2]/div[1]/button



#PIM

${PIM}                      //*[@id="app"]/div[1]/div[1]/aside/nav/div[2]/ul/li[2]/a/span
${NAME_PIM}                 //*[@id="app"]/div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[1]/div/div[1]/div/div[2]/div/div/input
${ID_PIM}                   //*[@id="app"]/div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[1]/div/div[2]/div/div[2]/input
${STATUS_PIM}               //*[@id="app"]/div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[1]/div/div[3]/div/div[2]/div/div/div[1]
${INCLIDE_PIM}              //*[@id="app"]/div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[1]/div/div[4]/div/div[2]/div/div/div[1]
${SUPERVISOR_NAME_PIM}      //*[@id="app"]/div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[1]/div/div[5]/div/div[2]/div/div/input
${JOB_TITLE_PIM}            //*[@id="app"]/div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[1]/div/div[6]/div/div[2]/div/div/div[1]
${SUB_UNIT_PIM}             //*[@id="app"]/div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[1]/div/div[7]/div/div[2]/div/div/div[1]
${RESET_PIM}                //*[@id="app"]/div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[2]/button[1]
${SEARCH_BUTTON_PIM}        //*[@id="app"]/div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[2]/button[2]
${ADD_BUTTON_PIM}           //*[@id="app"]/div[1]/div[2]/div[2]/div/div[2]/div[1]/button

