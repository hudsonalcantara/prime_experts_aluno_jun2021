*** Settings ***
Documentation    Exercício de eargumentos e retornos

*** Variables ***
&{DADOS}    nome=hud    sobrenome=alcantara    idade=23

*** Test Cases ***
Testar a criação de e-mails
    ${e-mail}    Criar e-mail    ${DADOS.nome}    ${DADOS.sobrenome}    ${DADOS.idade}
    Log To Console    ${\n}Email: ${e-mail} 

*** Keywords ***
Criar e-mail
    [Arguments]    ${nome}    ${sobrenome}    ${idade}
    [Return]    ${nome}_${sobrenome}_${idade}@robot.com