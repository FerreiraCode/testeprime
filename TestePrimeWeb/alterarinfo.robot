*** Settings ***
Library    SeleniumLibrary
Resource   variables.robot
Resource   common_keywords.robot
Library    FakerLibrary    locale=pt_BR


*** Test Cases ***

Realizar o Login e acessar a página do perfil do usuário

    Login
    My Info 

Limpar os campos para receber novas Informações

    Limpar Campos

Escrever o nome completo do usuário

    Primeiro Nome
    Nome do Meio
    Ultimo Nome

Escrever Nickname e Id do usuário

    Nickname
    ID de Funcionário
    Outro ID

Escrever Numero dos documentos do usuário

    CNH
    Vencimento da CNH
    Número da SSN
    Número da SIN

Escrever dados Pessoais do usuário

    Nacionalidade
    Estado Civil
    Data de Nascimento
    Genero

Escrever numero de serviço militar e dados de Saúde do usuário

    Serviço Militar
    Fumante
    Tipo Sanguineo


Adicionar um Anexo

    Adicionar Anexo