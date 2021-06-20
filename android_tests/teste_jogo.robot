*** Settings ***
Documentation       Testando jogo de bandeira (Android)
Library             AppiumLibrary
Resource            ./desafio_final_variables.robot

*** Test Cases ***
Abrir o jogo
    Abrir jogo
    Navegar pelo menu
    Jogar



*** Keywords ***
Abrir jogo
    Open Application                     ${REMOTE_URL}     platformName=${PLATFORM_NAME}       platformVersion=${PLATFORM_VERSION}
    ...                                  deviceName=${DEVICE_NAME}     automationName=${AUTOMATION_NAME}
    Wait Until Page Contains Element     xpath=//android.widget.TextView[@content-desc="Country Flags and Capital Cities Quiz"]    20
    Click Element                        xpath=//android.widget.TextView[@content-desc="Country Flags and Capital Cities Quiz"]

Navegar pelo menu
    Wait Until Element Is Visible        id=com.gryffindorapps.world.flags.country.quiz:id/RelLayPlay
    Click Element                        id=com.gryffindorapps.world.flags.country.quiz:id/RelLayPlay
    Wait Until Element Is Visible        id=com.gryffindorapps.world.flags.country.quiz:id/RelLayChooseAnswer
    Click Element                        id=com.gryffindorapps.world.flags.country.quiz:id/RelLayChooseAnswer
    Wait Until Element Is Visible        id=com.gryffindorapps.world.flags.country.quiz:id/btnContinents
    Click Element                        id=com.gryffindorapps.world.flags.country.quiz:id/btnContinents
    Wait Until Element Is Visible        id=com.gryffindorapps.world.flags.country.quiz:id/RelLayEuropa
    Click Element                        id=com.gryffindorapps.world.flags.country.quiz:id/RelLayEuropa
    Wait Until Element Is Visible        id=com.gryffindorapps.world.flags.country.quiz:id/RelLayCountryFlags
    Click Element                        id=com.gryffindorapps.world.flags.country.quiz:id/RelLayCountryFlags

Jogar
    Wait Until Element Is Visible        id=com.gryffindorapps.world.flags.country.quiz:id/tvHints      
    Click Text                           SPAIN
    Wait Until Page Contains             FRANCE    5s
    Click Text                           FRANCE
    Sleep    2s
    Wait Until Page Contains             GERMANY    5s
    Click Text                           GERMANY
    Sleep    2s
    Wait Until Page Contains             RUSSIA    5s
    Click Text                           RUSSIA
    Sleep    2s 
    Wait Until Page Contains             SERBIA    5s
    Click Text                           SERBIA
    Sleep    2s
    Wait Until Page Contains             NETHERLANDS    5s
    Click Text                           NETHERLANDS 
    Sleep    2s
    Wait Until Page Contains             GREECE    5s
    Click Text                           GREECE
    Sleep    2s
    Wait Until Page Contains             SWITZERLAND    5s
    Click Text                           SWITZERLAND 
    Sleep    2s
    Wait Until Page Contains             TURKEY    5s
    Click Text                           TURKEY
    Sleep    2s
    Wait Until Page Contains             UKRAINE    5s
    Click Text                           UKRAINE
    Sleep    2s 
    Wait Until Page Contains             UNITED KINGDOM    5s
    Click Text                           UNITED KINGDOM
    Sleep    2s
    Wait Until Page Contains             VATICAN CITY    5s
    Click Text                           VATICAN CITY
    Sleep    2s 
    Wait Until Page Contains             ALBANIA    5s
    Click Text                           ALBANIA
    Sleep    2s
    Wait Until Page Contains             ANDORRA    5s
    Click Text                           ANDORRA
    Sleep    2s 
    Wait Until Page Contains             BOSNIA AND HERZEGOVINA    5s
    Click Text                           BOSNIA AND HERZEGOVINA
    Sleep    2s
    Wait Until Page Contains             BULGARIA    5s
    Click Text                           BULGARIA
    Sleep    2s 
    Wait Until Page Contains             CROATIA    5s
    Click Text                           CROATIA
    Sleep    2s
    Wait Until Page Contains             LITHUANIA    5s
    Click Text                           LITHUANIA
    Sleep    2s
    Wait Until Page Contains             LUXEMBOURG    5s
    Click Text                           LUXEMBOURG
    Sleep    2s         
    Wait Until Page Contains             MALTA    5s
    Click Text                           MALTA
    Sleep    2s         
    Wait Until Page Contains             CYPRUS    5s
    Click Text                           CYPRUS
    Sleep    2s         
    Wait Until Page Contains             CZECHIA    5s
    Click Text                           CZECHIA
    Sleep    2s         
    Wait Until Page Contains             DENMARK    5s
    Click Text                           DENMARK
    Sleep    2s         
    Wait Until Page Contains             ESTONIA    5s
    Click Text                           ESTONIA
    Sleep    2s         
    Wait Until Page Contains             FINLAND    5s
    Click Text                           FINLAND
    Sleep    2s         
    Wait Until Page Contains             HUNGARY    5s
    Click Text                           HUNGARY
    Sleep    2s         
    Wait Until Page Contains             ICELAND    5s
    Click Text                           ICELAND
    Sleep    2s         
    Wait Until Page Contains             ITALY    5s
    Click Text                           ITALY
    Sleep    2s   
    Wait Until Page Contains             AUSTRIA    5s
    Click Text                           AUSTRIA
    Sleep    2s                  
    Wait Until Page Contains             BELARUS    5s
    Click Text                           BELARUS
    Sleep    2s                  
    Wait Until Page Contains             BELGIUM    5s
    Click Text                           BELGIUM
    Sleep    2s                  
    Wait Until Page Contains             LATVIA    5s
    Click Text                           LATVIA
    Sleep    2s                  
    Wait Until Page Contains             LIECHTENSTEIN    5s
    Click Text                           LIECHTENSTEIN
    Sleep    2s                  
    Wait Until Page Contains             MOLDOVA    5s
    Click Text                           MOLDOVA
    Sleep    2s                  
    Wait Until Page Contains             MONACO    5s
    Click Text                           MONACO
    Sleep    2s                  
    Wait Until Page Contains             MONTENEGRO    5s
    Click Text                           MONTENEGRO
    Sleep    2s                  
    Wait Until Page Contains             NORTH MACEDONIA    5s
    Click Text                           NORTH MACEDONIA
    Sleep    2s                  
    Wait Until Page Contains             NORWAY    5s
    Click Text                           NORWAY
    Sleep    2s                  
    Wait Until Page Contains             POLAND    5s
    Click Text                           POLAND
    Sleep    2s                  
    Wait Until Page Contains             PORTUGAL    5s
    Click Text                           PORTUGAL
    Sleep    2s                                 
    Wait Until Page Contains             ROMANIA    5s
    Click Text                           ROMANIA
    Sleep    2s                                 
    Wait Until Page Contains             SAN MARINO    5s
    Click Text                           SAN MARINO
    Sleep    2s                                 
    Wait Until Page Contains             SLOVAKIA    5s
    Click Text                           SLOVAKIA
    Sleep    2s                                 
    Wait Until Page Contains             SLOVENIA    5s
    Click Text                           SLOVENIA
    Sleep    2s                                 
    Wait Until Page Contains             IRELAND    5s
    Click Text                           IRELAND
    Sleep    2s                                 
    Wait Until Page Contains             SWEDEN    5s
    Click Text                           SWEDEN
    Sleep    2s                                 