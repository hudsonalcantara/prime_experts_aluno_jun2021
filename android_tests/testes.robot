*** Settings ***
Documentation    Automatizando app do YouTube (PrimeExperts)
Library          AppiumLibrary
Resource         variables.robot

*** Test Cases ***
Caso de Teste 01: Pesquisar canal “Adrenaline”
    Open YouTube
    Buscar o canal “Adrenaline”
    Navegar pelo menu Playlist
    Selecionar a primeira playlist do canal
    Navegar por todos os botões da barra de Menus(Home, Explorar...) do YouTube
 

*** Keywords ***
Open YouTube
    Open Application                    ${REMOTE_URL}    platformName=${PLATFORM_NAME}    platformVersopm=${PLATFORM_VERSION}
    ...                                 deviceName=${DEVICE_NAME}    appPackage=${APP_PACKAGE}    appActivity=${APP_ACTIVITY}
    ...                                 automationName=${AUTOMATION_NAME}
    Wait Until Page Contains Element    ${BANNER_ICON}

Buscar o canal “${nome_do_canal}”
    Click Element                       xpath=//android.widget.ImageView[@content-desc="Search"]
    Input Text                          id=com.google.android.youtube:id/search_edit_text    ${nome_do_canal}
    Press Keycode                       66
    Wait Until Page Contains Element    id=com.google.android.youtube:id/channel_avatar

Navegar pelo menu Playlist
    Click Element                       id=com.google.android.youtube:id/channel_avatar
    Wait Until Page Contains Element    xpath=//android.widget.Button[@content-desc="Playlists"]
    Click Element                       xpath=//android.widget.Button[@content-desc="Playlists"]

Selecionar a primeira playlist do canal
    Wait Until Page Contains Element    xpath=//android.widget.TextView[​@text='E3 2021']
    Click Element                       xpath=//android.widget.TextView[​@text='E3 2021']
    Wait Until Page Contains Element    xpath=//android.widget.ImageView[@content-desc="Play all"]

Navegar por todos os botões da barra de Menus(Home, Explorar...) do YouTube
    Click Element                       accessibility_id=Trending
    Click Element                       accessibility_id=Subscriptions
    Click Element                       accessibility_id=Notifications
    Click Element                       accessibility_id=Library
    Click Element                       accessibility_id=Home
    Click Element                       accessibility_id=Home



 

    