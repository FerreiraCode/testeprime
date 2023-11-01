*** Settings ***
Library    SeleniumLibrary
Resource   variables.robot
Resource   common_keywords.robot
Library    FakerLibrary    locale=pt_BR


*** Test Cases ***

Realizar Alteracao de Informacoes do Cadastro
    Login
    My Info 
    Limpar Campos
    Primeiro Nome
    Nome do Meio
    Ultimo Nome
    Nickname
    ID de Funcionário
    Outro ID
    CNH
    Vencimento da CNH
    Número da SSN
    Número da SIN
    Nacionalidade
    Estado Civil
    Data de Nascimento
    Genero
    Serviço Militar
    Fumante
    Tipo Sanguineo
