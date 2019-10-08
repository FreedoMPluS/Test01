*** Settings ***
Library    SeleniumLibrary
Suite setup    open
Suite teardown    close

*** Test Cases ***
Shoppee Login
    Wait Until Element is Visible    //div[@class='shopee-popup__close-btn']
    Click Element    //div[@class='shopee-popup__close-btn']
    Wait Until Element is not Visible    //div[@class='shopee-popup__close-btn']


*** Keywords ***
open
    Open Browser    https://shopee.co.th    gc

close
    Close Browser