*** Settings ***
Library    SeleniumLibrary
Resource   variables.robot
Library    FakerLibrary    locale=pt_BR
Resource   common_keywords.robot


*** Keywords ***

Login

    Create Webdriver     ${BROWSER}
    Maximize Browser Window
    Go to    ${URL}
    Wait Until Element is Visible   //h5[contains(.,'Login')]
    Input Text    //input[@name='username']   ${USERNAME}
    Input Password    //input[@name='password']   ${PASSWORD}
    Click Button   //button[@type='submit'][contains(.,'Login')]
    Wait Until Element is Visible   //a[contains(.,'My Info')]

My Info 

    Click Element   //a[contains(.,'My Info')]
    Wait Until Element is Visible    //label[contains(@class,'oxd-label oxd-input-field-required')]
    Sleep   4s