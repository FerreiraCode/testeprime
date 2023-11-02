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
    Wait Until Element is Visible   //input[@name='username']
    Input Text    //input[@name='username']   ${USERNAME}
    Input Password    //input[@name='password']   ${PASSWORD}
    Click Button   //button[@type='submit']
    Wait Until Element is Visible   //a[@href='/web/index.php/pim/viewMyDetails']

My Info 

    Click Element   //a[@href='/web/index.php/pim/viewMyDetails']
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
    Press Keys    //label[contains(.,'Nickname')]   ${SCROLL}
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
    Press Keys    //label[contains(.,'Nickname')]   ${SCROLL}
    Sleep   2s
    
Nacionalidade

    Wait Until Element Is Visible    (//i[@class='oxd-icon bi-caret-down-fill oxd-select-text--arrow'])[1]
    Click Element   (//i[@class='oxd-icon bi-caret-down-fill oxd-select-text--arrow'])[1]
    Wait Until Element is Visible   //div[@role='option'][contains(.,'Brazilian')]
    Click Element   //div[@role='option'][contains(.,'Brazilian')]   

Estado Civil

    Click Element   (//div[@clear='false'])[2]
    Wait Until Element is Visible   //div[@role='option'][contains(.,'Other')]
    Click Element   //div[@role='option'][contains(.,'Other')]   

Data de Nascimento

    ${DATA}     FakerLibrary.pastdate
    Input Text   (//input[@placeholder='yyyy-mm-dd'])[2]  ${DATA}

Genero

    Click Element   (//span[contains(@class,'oxd-radio-input oxd-radio-input--active --label-right oxd-radio-input')])[1]
    Press Keys    //label[contains(.,'Nickname')]   ${SCROLL}

Serviço Militar

    ${MILIT}     FakerLibrary.RandomNumber   digits=9
    Input Text   (//input[contains(@class,'oxd-input oxd-input--active')])[13]  ${MILIT}

Fumante

    Click Element   (//i[contains(@class,'oxd-icon bi-check oxd-checkbox-input-icon')])[1]
    Press Keys    (//i[contains(@class,'oxd-icon bi-check oxd-checkbox-input-icon')])[1]  ${SCROLL}
    Sleep   2s

Salvar Informações

    Click Button   (//button[@type='submit'][contains(.,'Save')])[1]
    Wait Until Element Is Visible   //div[@class='oxd-toast oxd-toast--success oxd-toast-container--toast']
Tipo Sanguineo

    Click Element   (//i[@class='oxd-icon bi-caret-down-fill oxd-select-text--arrow'])[3]
    Wait Until Element Is Visible    //div[@role='option'][contains(.,'O+')]
    Click Element    //div[@role='option'][contains(.,'O+')]

Salvar Tipo Sanguineo

    Click Button   (//button[@type='submit'][contains(.,'Save')])[2]
    Wait Until Element Is Visible   //div[@class='oxd-toast oxd-toast--success oxd-toast-container--toast']

Adicionar Anexo

    ${ANEXO}     FakerLibrary.Text    max_nb_chars=200
    Click Element   (//button[contains(@type,'button')])[3]
    Choose File    //input[@type='file']    ${PATH}
    Press Keys    (//i[contains(@class,'oxd-icon bi-check oxd-checkbox-input-icon')])[1]  ${SCROLL}
    Sleep   2s
    Wait Until Element Is Visible    //textarea[@placeholder='Type comment here']
    Input Text    //textarea[@placeholder='Type comment here']    ${ANEXO}
    Click Button   (//button[@type='submit'][contains(.,'Save')])[3]
    Wait Until Element Is Visible   //div[@class='oxd-toast oxd-toast--success oxd-toast-container--toast']



