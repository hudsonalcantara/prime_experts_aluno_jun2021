*** Settings ***
Documentation       automatizando app do youtube (PrimeExperts)
Library             AppiumLibrary
Resource            ./variables.robot
 
*** Test Cases ***
Search content
    Open Youtube
    Search For              adrenaline
    Select Playlist Menu
    Navigate Menus
 
*** Keywords ***
Open Youtube
    Open Application                             ${REMOTE_URL}     platformName=${PLATFORM_NAME}       platformVersion=${PLATFORM_VERSION}
    ...                                          deviceName=${DEVICE_NAME}        appPackage=${APP_PACKAGE}       appActivity=${APP_ACTIVITY}
    ...                                          automationName=${AUTOMATION_NAME}
    Wait Until Page Contains Element             ${BANNER_ICON}    20
 
Search For
    [Arguments]                             ${content}
 
    Wait Until Page Contains Element        ${BTN_SEARCH}
    Click Element                           ${BTN_SEARCH}
    Wait Until Page Contains Element        ${INPUT_SEARCH}
    Input Text                              ${INPUT_SEARCH}        ${content}
    Press Keycode                           66
    Wait Until Page Contains Element        ${CHANNEL_NAME}
    Click Element                           ${CHANNEL_NAME}
 
Select Playlist Menu
    Wait Until Page Contains Element        ${PLAYLISTS}
    Click Element                           ${PLAYLISTS}
    Wait Until Page Contains Element        ${CHOOSE_E3}
    Click Element                           ${CHOOSE_E3}
 
Navigate Menus
    Click Element                           ${HOME_BTN}
    Click Element                           ${TRENDING_BTN}
    Click Element                           ${SUBSCRIPTIONS_BTN}
    Click Element                           ${NOTIFICATION_BTN}