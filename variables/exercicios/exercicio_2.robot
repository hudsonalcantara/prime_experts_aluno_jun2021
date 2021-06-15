*** Settings ***
Documentation    Criando uma variável do tipo lista
Library    Collections

*** Variables ***
@{FRUTAS}    banana    maçã    abacate    limão    laranja

*** Test Cases ***
Meu teste imprimindo uma lista de FRUTAS
    Logar no meu terminal uma LISTA DE FRUTAS

*** Keywords ***
Logar no meu terminal uma LISTA DE FRUTAS
    Log To Console    ${\n}
    Log To Console    ${FRUTAS}
    Log Many    ${FRUTAS}
