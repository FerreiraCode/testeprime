*** Settings ***
Library    SeleniumLibrary
Resource   variables.robot
Resource   common_keywords.robot
Library    FakerLibrary    locale=pt_BR


*** Test Cases ***

Realizar Login

    Login

Acessar tela "My Info"

    My Info