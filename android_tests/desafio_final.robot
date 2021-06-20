*** Settings ***
Documentation       Desafio Final - App do YouTube (PrimeExperts)
Library             AppiumLibrary
Resource            ./desafio_final_variables.robot
 
*** Test Cases ***
Caso de Teste 02: Logar no Youtube
    Abrir App
    # Logar no aplicativo com a conta x
    Entrar no menu "Explorar"
    Usar swipe de tela até o 10 item da tela
    Clicar no vídeo

Caso de Teste 03: Usar método Swipe na tela
    Abrir App
    Entrar no menu "Explorar"
    Usar swipe de tela até o 10 item da tela
    Clicar no vídeo

Caso de Teste 04: Entrar um canal e se inscrever
    Abrir App
    Buscar o canal
    Entrar no canal
    Clicar em inscrever-se
    Ativar o sininho
    Escolher a opção All

Caso de Teste 05: Navegar pelo menu "Playlists" e escolher a décima e salvá-la
    Clicar no botão Playlists
    Usar swipe de tela
    Selecionar a décima playlist
    Salvar playlist breakingbad


*** Keywords ***
Abrir App
    Open Application                             ${REMOTE_URL}     platformName=${PLATFORM_NAME}       platformVersion=${PLATFORM_VERSION}
    ...                                          deviceName=${DEVICE_NAME}        appPackage=${APP_PACKAGE}       appActivity=${APP_ACTIVITY}
    ...                                          automationName=${AUTOMATION_NAME}
    Wait Until Page Contains Element             ${YT_LOGO}    20

Buscar o canal
    Click Element                                accessibility_id=Search
    Input Text                                   id=com.google.android.youtube:id/search_edit_text    Gustavo Cruz
    Press Keycode                                66

Entrar no canal
    Wait Until Page Contains Element             id=com.google.android.youtube:id/channel_avatar
    Click Element                                id=com.google.android.youtube:id/channel_avatar

Clicar em inscrever-se 
    Wait Until Page Contains Element             id=com.google.android.youtube:id/subscribe_button
    Click Element                                id=com.google.android.youtube:id/subscribe_button

Ativar o sininho
    Wait Until Page Contains Element             id=com.google.android.youtube:id/notification_toggle_view
    Click Element                                id=com.google.android.youtube:id/notification_toggle_view

Escolher a opção All
    Wait Until Page Contains Element             xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.LinearLayout[1]
    Click Element                                xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.LinearLayout[1]    
    Sleep                                        10s

Clicar no botão Playlists
    Click Element                                xpath=//android.widget.Button[@content-desc="Playlists"]

Usar swipe de tela
    Wait Until Page Contains Element             xpath=//android.widget.TextView[@content-desc="4 videos"]
    Swipe                                        545    1662    545    608
    Swipe                                        545    1662    545    608
    
Selecionar a décima playlist   
    Wait Until Page Contains Element             xpath=//android.widget.TextView[@content-desc="6 videos"]
    Click Element                                xpath=//android.widget.TextView[@content-desc="6 videos"]

Salvar playlist breakingbad
    Wait Until Page Contains Element             xpath=//android.widget.ImageView[@content-desc="Save to Playlists"]
    Click Element                                xpath=//android.widget.ImageView[@content-desc="Save to Playlists"]



# Logar no aplicativo com a conta x
#     Click Element                                ${ACCOUNT_BTN}
#     Wait Until Page Contains Element	           id=com.google.android.youtube:id/button
#     Click Element                                id=com.google.android.youtube:id/button
#     Wait Until Page Contains Element	           id=com.google.android.youtube:id/name
#     Click Element                                id=com.google.android.youtube:id/name
#     Wait Until Page Contains Element             ${EMAIL_BOX}    20       
#     Input Text                                   ${EMAIL_BOX}    uddy0993@gmail.com               
#     Click Element                                class=android.widget.Button
#     Sleep    5s
#     Click Text    Close
#     Sleep    5s 
#     Click Element                                class=android.widget.Button
#     Wait Until Page Contains Element             id=profileIdentifier
#     Input Password                               id=android.view.View    SENHA

Entrar no menu "Explorar"
    Click Element                                ${TRENDING_BTN}
    Wait Until Element Is Visible                xpath=//android.widget.ImageView[@content-desc="Music"]

Usar swipe de tela até o 10 item da tela
    Swipe                                        556    763    561    275
    Swipe                                        556    763    561    275
    Swipe                                        556    763    561    275
    Swipe                                        556    763    561    275
    Swipe                                        556    763    561    275
    Swipe                                        556    763    561    275
    Swipe                                        556    763    561    275
    Swipe                                        556    763    561    275
    Swipe                                        556    763    561    275
    Swipe                                        556    763    561    275
    Swipe                                        556    763    561    275
    Swipe                                        556    763    561    275
    Swipe                                        556    763    561    275

Clicar no vídeo
    Wait Until Element Is Visible                xpath=//android.view.ViewGroup[@content-desc="A Year Later ... - 18 minutes - Go to channel - Tati - 1.9M views - 2 days ago - play video"]
    Click Element                                xpath=//android.view.ViewGroup[@content-desc="A Year Later ... - 18 minutes - Go to channel - Tati - 1.9M views - 2 days ago - play video"]

    