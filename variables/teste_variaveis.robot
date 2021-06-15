*** Settings ***
Documentation    Meu teste de variáveis
Library    Collections

*** Variables ***
${MENSAGEM}    Hello World!!
${NUMERO}    ${10}
${BOOLEAN}    ${true}
# ${BOOLEAN}    ${false}
&{PESSOA}    nome=Hudson    sobrenome=Alcântara    idade=15
@{FRUTAS}    banana    maçã    laranja

*** Test Cases ***
Meu teste de impressão de mensagem no terminal
    Logar no meu terminal uma mensagem

Meu teste imprimindo um dicionário de PESSOA
    Logar no meu terminal uma PESSOA

Meu teste imprimindo uma lista de FRUTAS
    Logar no meu terminal uma LISTA DE FRUTAS

*** Keywords ***
Logar no meu terminal uma mensagem
    Set Test Variable     ${nova_fruta}    morango
    Log To Console    ${\n}
    Log To Console    ${MENSAGEM}    

Logar no meu terminal uma PESSOA
    Log To Console    ${\n}
    Log To Console    ${PESSOA}
    Log To Console    ${\n}
    Log To Console    ${PESSOA.nome} ${PESSOA.sobrenome} ${PESSOA.idade} anos!

Logar no meu terminal uma LISTA DE FRUTAS
    ${nova_fruta}     Set Variable    morango
    Log To Console    ${\n}
    Log To Console    ${FRUTAS} ${nova_fruta}
    Log Many          ${FRUTAS}
    Log To Console    ${nova_fruta}