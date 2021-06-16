*** Settings ***
Documentation    Exercício de FOR

*** Variables ***
@{PAISES}    Brasil    Holanda    Alemanha    França    Japão

*** Test Cases ***
Contar de 0 até 10
    Imprimir do 0 a 10

Lista de países
    Imprimir uma lista

*** Keywords ***
Imprimir do ${A} a ${B}
    FOR    ${numero}    IN RANGE    ${A}    ${B}+1
        Log To Console    ${\n}Estou no número: ${numero}!

    END

Imprimir uma lista
    FOR    ${pais}    IN    @{PAISES}
        Log To Console    ${\n}O país da vez é: ${pais}
        
    END