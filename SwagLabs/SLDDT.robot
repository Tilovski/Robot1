*** Settings ***
Library     SeleniumLibrary
Resource    ../TC/SLdata.robot
Suite Setup     Opening browser
Suite Teardown      Close browesrs
Test Template   Invalid login



*** Test Cases ***          username    password
Testing Swag labs with invalid information

Right username emty password          standard_user       ${EMPTY}
Right username wrong password           standard_user       zxc
Wrong username right password            standard        secret_sauce
Wrong username wrong password           standard        zxc
Empty username worng password            ${EMPTY}        zxc



*** Keywords ***
Invalid login
    [Arguments]     ${username}     ${password}
    Input username    ${username}
    Input pwd    ${password}
    Click login button
    Error message
