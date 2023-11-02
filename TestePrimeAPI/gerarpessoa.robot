*** Settings ***
Library           RequestsLibrary
Library           Collections
Library           BuiltIn
Resource          variables.robot
Resource          common_keywords.robot




*** Test Cases ***
Validate API Response

    Criar Sessão

Validar se o campo idade consta na lista

   Campo idade

Validando se o Sexo é Masculino

    Sexo Masculino

Validando se o Sexo é Feminino 

    Sexo Feminino

Verificar se o CPF é válido

    CPF
    Validar CPF
    Limpar CPF


