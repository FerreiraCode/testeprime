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
    Wait Until Element is Visible    //input[@name='firstName']
    Sleep   4s

Limpar Campos

    Press Keys    //input[@name='firstName']   ${DELETE}
    Press Keys    //input[@name='middleName']   ${DELETE}
    Press Keys    //input[@name='lastName']   ${DELETE}
    Press Keys    (//input[contains(@class,'oxd-input oxd-input--active')])[4]   ${DELETE}
    Press Keys    (//input[contains(@class,'oxd-input oxd-input--active')])[5]   ${DELETE}
    Press Keys    (//input[contains(@class,'oxd-input oxd-input--active')])[6]   ${DELETE}
    Press Keys    (//input[contains(@class,'oxd-input oxd-input--active')])[7]   ${DELETE}
    Press Keys    (//input[contains(@class,'oxd-input oxd-input--active')])[9]   ${DELETE}
    Press Keys    (//input[contains(@class,'oxd-input oxd-input--active')])[10]  ${DELETE}
    Press Keys    (//input[@placeholder='yyyy-mm-dd'])[1]   ${DELETE}
    Press Keys    //label[@class='oxd-label'][contains(.,'License Expiry Date')]   ${SCROLL}
    Press Keys    (//input[contains(@class,'oxd-input oxd-input--active')])[13]   ${DELETE}
    Press Keys    (//input[@placeholder='yyyy-mm-dd'])[2]   ${DELETE}
    Sleep   4s

Primeiro Nome

    ${NOME}     FakerLibrary.FirstNameMale
    Input Text   //input[@name='firstName']  ${NOME}

Nome do Meio

    ${NOME}     FakerLibrary.LastName
    Input Text   //input[@name='middleName']  ${NOME}

Ultimo Nome

    ${NOME}     FakerLibrary.LastName
    Input Text   //input[@name='lastName']  ${NOME}


Nickname

    ${NOME}     FakerLibrary.UserName
    Input Text   (//input[contains(@class,'oxd-input oxd-input--active')])[4]  ${NOME}


ID de Funcionário

    ${ID}     FakerLibrary.RandomNumber   digits=5
    Input Text   (//input[contains(@class,'oxd-input oxd-input--active')])[5]  ${ID}

Outro ID

    ${ID}     FakerLibrary.RandomNumber   digits=5
    Input Text   (//input[contains(@class,'oxd-input oxd-input--active')])[6]  ${ID}


CNH

    ${CNH}     FakerLibrary.RandomNumber   digits=9
    Input Text   (//input[contains(@class,'oxd-input oxd-input--active')])[7]  ${CNH}

Vencimento da CNH

    ${DATA}     FakerLibrary.futuredate
    Input Text   (//input[@placeholder='yyyy-mm-dd'])[1]  ${DATA}


Número da SSN

    ${SSN}     FakerLibrary.cpf
    Input Text   (//input[contains(@class,'oxd-input oxd-input--active')])[9]  ${SSN}

Número da SIN

    ${SIN}     FakerLibrary.cnpj
    Input Text   (//input[contains(@class,'oxd-input oxd-input--active')])[10]  ${SIN}
    Press Keys    //label[@class='oxd-label'][contains(.,'License Expiry Date')]   ${SCROLL}
    Sleep   2s

Nacionalidade

    Click Element   (//div[@clear='false'])[1]
    Wait Until Element is Visible   //div[@role='option'][contains(.,'Brazilian')]
    Click Element   //div[@role='option'][contains(.,'Brazilian')]   

Estado Civil

    Click Element   (//div[@clear='false'])[2]
    Wait Until Element is Visible   //div[@role='option'][contains(.,'Other')]
    Click Element   //div[@role='option'][contains(.,'Other')]   
    Sleep   4s

Data de Nascimento

    ${DATA}     FakerLibrary.pastdate
    Input Text   (//input[@placeholder='yyyy-mm-dd'])[2]  ${DATA}

Genero

    Click Element   //label[contains(.,'Male')]
    Press Keys    //label[@class='oxd-label'][contains(.,'License Expiry Date')]   ${SCROLL}

Serviço Militar

    ${MILIT}     FakerLibrary.RandomNumber   digits=9
    Input Text   (//input[contains(@class,'oxd-input oxd-input--active')])[13]  ${MILIT}

Fumante

    Click Element   //label[contains(.,'Yes')]
    Press Keys    //label[@class='oxd-label'][contains(.,'License Expiry Date')]   ${SCROLL}
Salvar Informações

    Click Button   (//button[@type='submit'][contains(.,'Save')])[1]

Tipo Sanguineo

    Click Element   (//div[contains(@class,'oxd-select-text-input')])[3]
    Wait Until Element is Visible   //span[contains(.,'A+')]
    Press Keys    //label[@class='oxd-label'][contains(.,'License Expiry Date')]   ${SCROLL}
    Sleep    5s

Adicionar Anexo


Salvar


