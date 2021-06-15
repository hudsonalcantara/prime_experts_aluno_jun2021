*** Settings ***
Documentation    Criando uma variável do tipo dicionário
Library    Collections

*** Variables ***
&{PESSOA}    nome=Hudson    sobrenome=Alcântara    idade=23    nascimento=05/05/1998    email=hudson0598@gmail.com    

*** Test Cases ***
Meu teste de impressão no terminal com minhas informações
    Logar no meu terminal minhas informações

*** Keywords ***
Logar no meu terminal minhas informações
    Log To Console    ${\n}
    Log To Console    ${PESSOA.nome}
    Log To Console    ${\n}
    Log To Console    ${PESSOA.sobrenome}
    Log To Console    ${\n}
    Log To Console    ${PESSOA.idade}
    Log To Console    ${\n}
    Log To Console    ${PESSOA.nascimento}
    Log To Console    ${\n}
    Log To Console    ${PESSOA.email}
    Log To Console    ${\n}