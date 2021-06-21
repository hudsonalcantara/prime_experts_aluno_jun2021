*** Settings ***
Documentation       Testando jogo de inglês LingoDeer (Android)
Library             AppiumLibrary
Resource            ./desafio_final_variables.robot

*** Test Cases ***
Abrir o jogo LingoDeer
    Abrir jogo

Abrir a primeira lição do módulo "Animais de Estimação"
    Abrir o primeiro módulo "Animais de Estimação"
    Escolher a primeira lição

Jogar a primeira lição do módulo "Animais de Estimação"
    Jogar
    




*** Keywords ***
Abrir jogo
    Open Application                             ${REMOTE_URL}     platformName=${PLATFORM_NAME}       platformVersion=${PLATFORM_VERSION}
    ...                                          deviceName=${DEVICE_NAME}     automationName=${AUTOMATION_NAME}
    Wait Until Page Contains Element             accessibility_id=LingoDeer    20
    Click Element                                accessibility_id=LingoDeer

Abrir o primeiro módulo "Animais de Estimação"
    Wait Until Page Contains Element             id=com.lingodeer:id/ll_unit_name    20
    Click Element                                id=com.lingodeer:id/ll_unit_name

Escolher a primeira lição
    Wait Until Page Contains Element             id=com.lingodeer:id/iv_open_tag    20
    Click Element                                id=com.lingodeer:id/iv_open_tag       

Jogar
    Wait Until Page Contains Element             ${AUDIO_BTN}
    Click Element                                ${AUDIO_BTN}
    Sleep                                        5s
    Click Element                                ${CHECK_BTN}
    Wait Until Page Contains                     dog
    Click Text                                   dog
    Click Element                                ${CHECK_BTN}
    Wait Until Page Contains Element             ${NEXT_BTN}
    Click Element                                ${NEXT_BTN}
    Wait Until Page Contains                     cat
    Click Text                                   cat
    Click Element                                ${CHECK_BTN}
    Wait Until Page Contains Element             ${NEXT_BTN}
    Click Element                                ${NEXT_BTN}
    Wait Until Page Contains                     bird
    Click Text                                   bird
    Click Element                                ${CHECK_BTN}
    Wait Until Page Contains Element             ${NEXT_BTN}
    Click Element                                ${NEXT_BTN}
    Wait Until Page Contains                     dog
    Click Text                                   dog
    Click Element                                ${CHECK_BTN}
    Wait Until Page Contains Element             ${NEXT_BTN}
    Click Element                                ${NEXT_BTN}
    Wait Until Page Contains Element             ${AUDIO_BTN}
    Click Element                                ${AUDIO_BTN}
    Sleep                                        5s
    Click Element                                ${CHECK_BTN}
    Wait Until Page Contains Element             id=com.lingodeer:id/rl_answer_1
    Click Element                                id=com.lingodeer:id/rl_answer_1
    Click Element                                ${CHECK_BTN}
    Wait Until Page Contains Element             ${NEXT_BTN}
    Click Element                                ${NEXT_BTN}
    Wait Until Page Contains Element             ${AUDIO_BTN}
    Click Element                                ${AUDIO_BTN}
    Sleep                                        5s
    Click Element                                ${CHECK_BTN}
    Wait Until Page Contains                     text=a
    Click Text                                   text=a    exact_match=true
    Click Element                                ${CHECK_BTN}
    Wait Until Page Contains Element             ${NEXT_BTN}
    Click Element                                ${NEXT_BTN}
    Sleep                                        5s        
    Wait Until Page Contains                     text=a
    Click Text                                   text=a    exact_match=true
    Click Element                                ${CHECK_BTN}
    Wait Until Page Contains Element             ${NEXT_BTN}
    Click Element                                ${NEXT_BTN}
    Sleep                                        5s        
    Wait Until Page Contains                     pássaro
    Click Text                                   pássaro
    Click Element                                ${CHECK_BTN}
    Wait Until Page Contains Element             ${NEXT_BTN}
    Click Element                                ${NEXT_BTN}
    Wait Until Page Contains                     text=a
    Click Text                                   text=a    exact_match=true
    Click Text                                   bird
    Click Element                                ${CHECK_BTN}
    Wait Until Page Contains Element             ${NEXT_BTN}
    Click Element                                ${NEXT_BTN}
    Wait Until Page Contains Element             ${AUDIO_BTN}
    Click Element                                ${AUDIO_BTN}
    Sleep                                        5s
    Click Element                                ${CHECK_BTN}
    Wait Until Page Contains Element             ${AUDIO_BTN}
    Click Element                                ${AUDIO_BTN}
    Sleep                                        5s
    Click Element                                ${CHECK_BTN}
    Wait Until Page Contains Element             ${AUDIO_BTN}
    Click Element                                ${AUDIO_BTN}
    Sleep                                        5s
    Click Element                                ${CHECK_BTN}
    Wait Until Page Contains                     d
    Click Text                                   d
    Sleep    1s
    Click Text                                   o    exact_match=true
    Sleep    1s
    Click Text                                   g
    Click Element                                ${CHECK_BTN}
    Wait Until Page Contains Element             ${NEXT_BTN}
    Click Element                                ${NEXT_BTN}
    Wait Until Page Contains                     text=I
    Click Text                                   text=I    exact_match=true
    Click Element                                ${CHECK_BTN}
    Wait Until Page Contains Element             ${NEXT_BTN}
    Click Element                                ${NEXT_BTN}
    Wait Until Page Contains                     text=Hello!
    Click Text                                   text=Hello!
    Click Element                                ${CHECK_BTN}
    Wait Until Page Contains Element             ${NEXT_BTN}
    Click Element                                ${NEXT_BTN}
    Wait Until Page Contains                     c
    Click Text                                   c
    Sleep    1s
    Click Text                                   a
    Sleep    1s
    Click Text                                   t
    Click Element                                ${CHECK_BTN}
    Wait Until Page Contains Element             ${NEXT_BTN}
    Click Element                                ${NEXT_BTN}   



