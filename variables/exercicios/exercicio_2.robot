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
    Log To Console    1] ${FRUTAS[0]}
    Log To Console    ${\n}
    Log To Console    2] ${FRUTAS[1]}
    Log To Console    ${\n}
    Log To Console    3] ${FRUTAS[2]}
    Log To Console    ${\n}
    Log To Console    4] ${FRUTAS[3]}
    Log To Console    ${\n}
    Log To Console    5] ${FRUTAS[4]}
    Log To Console    ${\n}