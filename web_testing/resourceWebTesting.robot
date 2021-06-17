*** Settings ***
Documentation    Resource com as KWs da suiteWebTesting
Library    SeleniumLibrary

*** Variables ***
${URL}    http://automationpractice.com

*** Keywords ***
## ---- SETUP
Abrir o Navegador
    Open Browser    browser=chrome

## ----- TEARDOWN
Fechar o Navegador
    Close Browser

## ---- STEPS
Acessar a página home do site Automation Practice
    Go To    ${URL}
    Wait Until Element Is Visible    xpath=//img[contains(@class,'logo img-responsive')]

Digitar o nome do produto "${PRODUTO}" no campo de pesquisa
    Input Text    id=search_query_top    ${PRODUTO}
    
Clicar no botão pesquisar
    Click Button    name=submit_search

Conferir se o produto "${PRODUTO}" foi listado no site
    # Wait Until Element Is Visible    xpath=(//a[@class='product-name'][contains(.,'${PRODUTO}')])[2]
    Wait Until Element Is Visible    xpath=//img[contains(@alt,'${PRODUTO}')]

Adicionar o produto "${PRODUTO}" no carrinho
    Mouse Over       xpath=(//a[@class='product-name'][contains(.,'${PRODUTO}')])[2]
    Click Element    xpath=//span[contains(.,'Add to cart')]
    Wait Until Element Is Visible    xpath=//span[contains(.,'Proceed to checkout')]
    Click Element    xpath=//span[contains(.,'Proceed to checkout')]

Conferir se o produto "${PRODUTO}" foi adicionado no carrinho
    Wait Until Element Is Visible    xpath=(//a[contains(.,'${PRODUTO}')])[4]

Conferir mensagem "No results were found for your search "${PRODUTO}""
    Wait Until Element Is Visible    xpath=//p[@class='alert alert-warning'][contains(.,'No results were found for your search "${PRODUTO}"')]

Passar o mouse por cima da categoria "${opcao}" no menu principal superior de categorias
    Wait Until Element Is Visible    xpath=//a[contains(@title,'${opcao}')]
    Mouse Over    xpath=//a[contains(@title,'${opcao}')]

Clicar na sub categoria "${categoria}"
    Wait Until Element Is Visible    xpath=(//a[@title='${categoria}'])[1]
    Mouse Over    xpath=(//a[@title='${categoria}'])[1]
    Click Element    xpath=(//a[@title='${categoria}'])[1]

Conferir se os produtos da sub-categoria "${categoria}" foram mostrados na página
    Wait Until Element Is Visible    xpath=//div[contains(@class,'content_scene_cat_bg')]

Clicar em "Sign in"
    Wait Until Element Is Visible    xpath=//a[@class='login'][contains(.,'Sign in')]
    Mouse Over    xpath=//a[@class='login'][contains(.,'Sign in')]
    Click Element    xpath=//a[@class='login'][contains(.,'Sign in')]

Informar um E-mail "${email}"
    Wait Until Element Is Visible    id=email_create
    Input Text    id=email_create    ${email}

Clicar em "Create an account"
    Wait Until Element Is Visible    xpath=//span[contains(.,'Create an account')]
    Mouse Over    xpath=//span[contains(.,'Create an account')]
    Click Element    xpath=//span[contains(.,'Create an account')]

Preencher os dados obrigatórios
    Sleep    10s
    Mouse Over    id=id_gender1
    Click Element    id=id_gender1
    Input Text    id=customer_firstname    text=Hudson
    Input Text    id=customer_lastname    text=Alcântara
    Input Text    id=email    text=hudson0598@gmail.com
    Input Text    id=passwd    text=123456789
    Select From List By Value    id=days    ${05}
    Select From List By Value    id=months    ${05}
    Select From List By Value    id=years    ${1998}
    Input Text    id=customer_firstname    text=Hudson
    Input Text    id=customer_lastname    text=Alcântara
    Input Text    id=company    text=Prime Control
    Input Text    id=address1    text=R. José 
    Input Text    id=address2    text=123
    Input Text    id=city    text=Recife
    Select From List By Label    id=id_state    Alabama
    Input Text    id=postcode    text=99999
    Select From List By Label    id=id_country    United States
    Input Text    id=other    text=Informação adicional...
    Input Text    id=phone    text=(99) 9999-9999
    Input Text    id=phone_mobile    text=(99) 99999-9999
    Input Text    id=alias    text=R. José 123

Submeter cadastro
    Mouse Over    xpath=//span[contains(.,'Register')]
    Click Element    xpath=//span[contains(.,'Register')]   

Conferir se o cadastro foi efetuado com sucesso
    Wait Until Element Is Visible    xpath=//span[contains(.,'My personal information')]

Acessar página "${site}"
    Go To    ${site}
    Sleep    5s

Pesquisar "${texto}" no campo de busca
    Input Text    xpath=//input[contains(@autocapitalize,'none')]    text=${texto}
    Click Element    xpath=(//yt-icon[@class='style-scope ytd-searchbox'])[2]

    


    


    
    




    
    