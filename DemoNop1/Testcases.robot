*** Settings ***
Library     SeleniumLibrary
Library    String
Resource    ../DemoNop1/Locators.robot
Resource    ../DemoNop1/Keywords.robot

*** Test Cases ***
Testing DemoNop
    Opening browser and navigate to site
    Register with new user and Log in
    Buying Item-Computer-Desktop-Build your own PC
    Chek out
    Shipping and payment


