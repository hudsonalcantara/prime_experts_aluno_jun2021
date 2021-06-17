*** Settings ***
Documentation    Suite de Testes WEB - Site: https://www.youtube.com
Resource    resourceWebTesting.robot
Suite Setup    Abrir o Navegador
# Suite Teardown    Fechar o Navegador

*** Test Cases ***
Caso de Teste 01: Pesquisar um nome
    Acessar página "https://www.youtube.com"
    Pesquisar "Hudson Alcântara" no campo de busca

