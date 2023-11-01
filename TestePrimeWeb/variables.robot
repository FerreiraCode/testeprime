*** Settings ***
Library    SeleniumLibrary
Library    FakerLibrary    locale=pt_BR
Resource   variables.robot
Resource   common_keywords.robot

*** Variables ***

${BROWSER}    Edge
${URL}    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${USERNAME}    Admin
${PASSWORD}    admin123


