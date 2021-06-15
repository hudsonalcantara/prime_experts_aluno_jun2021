*** Settings ***
Documentation    Meu teste de variáveis
Library    Collections

*** Variables ***
${MENSAGEM}    Hello World!! Hello Console!! Hello Prime Experts!!!
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
    Log To Console    ${\n}
    Log To Console    ${MENSAGEM}    

Logar no meu terminal uma PESSOA
    Log To Console    ${\n}
    Log To Console    ${PESSOA}
    Log To Console    ${\n}
    Log To Console    ${PESSOA.nome} ${PESSOA.sobrenome} ${PESSOA.idade} anos!

Logar no meu terminal uma LISTA DE FRUTAS
    ## Declaro localmente uma nova variável
    ${outra_fruta}     Set Variable    abacaxi
    ## Declaro uma nova variável em escopo do teste
    Set Test Variable    ${nova_fruta}    morango
    Log To Console    ${\n}
    Log To Console    ${FRUTAS}
    Log Many          ${FRUTAS}
    Log To Console    ${nova_fruta}-${outra_fruta}
    Log To Console    ${\n}
    Log To Console    ${FRUTAS[0]}
    Log To Console    ${\n}
    Log To Console    ${FRUTAS[1]}
    Log To Console    ${\n}
    Log To Console    ${FRUTAS[2]}
    Log To Console    ${\n}
