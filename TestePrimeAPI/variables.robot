*** Settings ***
Library    RequestsLibrary
Library           Collections
Library           BuiltIn

*** Variables ***
${BASE_URL}       https://www.4devs.com.br/ferramentas_online.php
${ACTION}         gerar_pessoa
${VALIDAR}        validar_cpf
${PONTUACAO}      N
${SEXO}           H
${QTDE}           1
${cpf}    ${EMPTY}