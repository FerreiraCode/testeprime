*** Settings ***
Library    RequestsLibrary
Resource   variables.robot


*** Keywords ***
Criar Sessão

    Create Session    4devs_api    ${BASE_URL}
    ${headers}        Create Dictionary    Content-Type=application/x-www-form-urlencoded
    ${body}           Create Dictionary    acao=${ACTION}    pontuacao=${PONTUACAO}    sexo=${SEXO}    txt_qtde=${QTDE}
    ${response}       POST On Session         4devs_api    /ferramentas_online.php    data=${body}    headers=${headers}
    Should Be Equal As Numbers    ${response.status_code}    200
    ${json_response}  Set Variable        ${response.json()[0]}    # Acessa o primeiro item na lista de resposta
    Should Not Be Empty    ${json_response}
    Log To Console    ${response.text}

Campo idade

    Create Session    4devs_api    ${BASE_URL}
    ${headers}        Create Dictionary    Content-Type=application/x-www-form-urlencoded
    ${body}           Create Dictionary    acao=${ACTION}    pontuacao=${PONTUACAO}    sexo=${SEXO}    txt_qtde=${QTDE}
    ${response}       POST On Session         4devs_api    /ferramentas_online.php    data=${body}    headers=${headers}
    Should Be Equal As Numbers    ${response.status_code}    200
    ${json_response}  Set Variable        ${response.json()[0]}    # Acessa o primeiro item na lista de resposta
    Should Not Be Empty    ${json_response}
    Log To Console    ${response.text}
    Dictionary Should Contain Key    ${json_response}    idade
    Should Be Equal As Numbers    ${response.status_code}    200

Sexo Masculino
    Create Session    4devs_api    ${BASE_URL}
    ${headers}        Create Dictionary    Content-Type=application/x-www-form-urlencoded
    ${body}           Create Dictionary    acao=${ACTION}    pontuacao=${PONTUACAO}    sexo=${SEXO}    txt_qtde=${QTDE}
    ${response}       POST On Session         4devs_api    /ferramentas_online.php    data=${body}    headers=${headers}
    Should Be Equal As Numbers    ${response.status_code}    200
    ${json_response}  Set Variable        ${response.json()[0]}    # Acessa o primeiro item na lista de resposta
    Should Not Be Empty    ${json_response}
    Log To Console    ${response.text}
    Dictionary Should Contain Key    ${json_response}    sexo  Masculino
    Should Be Equal    ${json_response['sexo']}    Masculino
    Should Be Equal As Numbers    ${response.status_code}    200

Sexo Feminino

    Create Session    4devs_api    ${BASE_URL}
    ${headers}        Create Dictionary    Content-Type=application/x-www-form-urlencoded
    ${body}           Create Dictionary    acao=${ACTION}    pontuacao=${PONTUACAO}    sexo=${SEXO}    txt_qtde=${QTDE}
    ${response}       POST On Session         4devs_api    /ferramentas_online.php    data=${body}    headers=${headers}
    Should Be Equal As Numbers    ${response.status_code}    200
    ${json_response}  Set Variable        ${response.json()[0]}    # Acessa o primeiro item na lista de resposta
    Should Not Be Empty    ${json_response}
    Log To Console    ${response.text}
    Dictionary Should Contain Key    ${json_response}    sexo  Masculino
    Should Be Equal    ${json_response['sexo']}    Feminino
    
CPF


    Create Session    4devs_api    ${BASE_URL}
    ${headers}        Create Dictionary    Content-Type=application/x-www-form-urlencoded
    ${body}           Create Dictionary    acao=${ACTION}    pontuacao=${PONTUACAO}    sexo=${SEXO}    txt_qtde=${QTDE}
    ${response}       POST On Session         4devs_api    /ferramentas_online.php    data=${body}    headers=${headers}
    Should Be Equal As Numbers    ${response.status_code}    200
    ${json_response}  Set Variable        ${response.json()[0]}    # Acessa o primeiro item na lista de resposta
    Should Not Be Empty    ${json_response}
    ${cpf}           Set Variable    ${json_response['cpf']} 
    Set Global Variable    ${cpf}   # Armazena o valor do campo CPF
    [Return]    ${json_response}    ${cpf}
    Log To Console    O cpf guardado é : ${cpf}



    

Validar CPF


    ${headers}    Create Dictionary    Content-Type=application/x-www-form-urlencoded
    ${body}       Create Dictionary    acao=${VALIDAR}    txt_cpf=${cpf}
    ${response}   POST On Session         4devs_api    /ferramentas_online.php   data=${body}    headers=${headers}
    Should Be Equal As Numbers    ${response.status_code}    200
    Log To Console    ${response.text}
    Should Be Equal    ${response.text}  ${cpf} - Verdadeiro



Limpar CPF

    ${cpf} =    Set Variable    ${none}
    Log To Console   O cpf guardado é : ${cpf}   # Limpa o valor da variável CPF
