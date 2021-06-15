*** Settings ***
Documentation    Testes de loops (FOR)

*** Variables ***
@{FRUTAS}    maçã    banana    uva    abacaxi    mamão    laranja    morango

*** Test Cases ***
Teste do FOR IN RANGE (para intervalos)
    Imprimir do 0 a 8
    Imprimir do 10 a 20

Teste do FOR IN (para percorrer listas)
    Imprimir uma lista

*** Keywords ***
Imprimir do ${A} a ${B}
    FOR    ${numero}    IN RANGE    ${A}    ${B}
        Log To Console    ${\n}Estou no número: ${numero}!
        ${RESULTADO}    Evaluate    ${numero}+10
        Log To Console    Número+10 = ${RESULTADO}
    END

Imprimir uma lista
    FOR    ${fruta}    IN    @{FRUTAS}
        Log To Console    ${\n}A fruta da vez é: ${fruta}
        
    END