*** Settings ***
Library     SeleniumLibrary
Library     String
Resource    ../OrangeHRM/Locator.robot
Resource    ../OrangeHRM/Keywords.robot

*** Test Cases ***
Testing OrangeHRM
    Opening browser 1
    Log in
    Searching employee
