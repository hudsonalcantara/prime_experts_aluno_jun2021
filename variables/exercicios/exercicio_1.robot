*** Settings ***
Documentation    Criando uma variável
Library    Collections

*** Variables ***
&{PESSOA}    nome=Hudson    sobrenome=Alcântara    idade=23    nascimento=05/05/1998    email=hudson0598@gmail.com    

*** Test Cases ***
Meu teste de impressão no terminal com minhas informações
    Logar no meu terminal minhas informações

*** Keywords ***
Logar no meu terminal minhas informações
    Log To Console    ${\n}
    Log To Console    ${PESSOA.nome} ${PESSOA.sobrenome} ${PESSOA.idade} ${PESSOA.nascimento} ${PESSOA.email}
