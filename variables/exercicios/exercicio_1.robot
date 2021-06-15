*** Settings ***
Documentation    Criando uma variável do tipo dicionário
Library    Collections

*** Variables ***
&{PESSOA}    nome=Hudson    sobrenome=Alcântara    profissao=Programador        
...        sexo=Masculino    idade=23    nascimento=05/05/1998    email=hudson0598@gmail.com
*** Test Cases ***
Meu teste de impressão no terminal com minhas informações
    Logar no meu terminal minhas informações

*** Keywords ***
Logar no meu terminal minhas informações
    Log To Console    ${\n}
    Log To Console    Nome: ${PESSOA.nome}
    Log To Console    ${\n}
    Log To Console    Sobrenome: ${PESSOA.sobrenome}
    Log To Console    ${\n}
    Log To Console    Idade: ${PESSOA.idade}
    Log To Console    ${\n}
    Log To Console    Sexo: ${PESSOA.sexo}
    Log To Console    ${\n}
    Log To Console    Profissão: ${PESSOA.profissao}
    Log To Console    ${\n}
    Log To Console    Data de nascimento: ${PESSOA.nascimento}
    Log To Console    ${\n}
    Log To Console    Email: ${PESSOA.email}
    Log To Console    ${\n}