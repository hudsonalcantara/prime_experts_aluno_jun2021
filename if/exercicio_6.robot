*** Settings ***
Documentation    Exercício de IF

*** Test Cases ***
Teste de IFs
    Imprimir do 0 a 10

*** Keywords ***
Imprimir do ${A} a ${B}
    Log To Console    ${\n}
    FOR    ${numero}    IN RANGE    ${A}    ${B}+1
        IF    '${numero}' == '${5}' or '${numero}' == '${8}'
            Log To Console    ${\n}Estou no número: ${numero}!
        END
    END
