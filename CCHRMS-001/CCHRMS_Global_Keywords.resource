*** Settings ***
Library       SeleniumLibrary
Resource      CCHRMS_Global_Variables.resource

*** Keywords ***

Open HRMS
    Open Browser    ${url}    ${browser}
    
Login To HRMS
    [Arguments]                      ${username}    ${password}
    Input Text                       ${CCHRMS_LoginUsername}    ${username}
    Input Password                   ${CCHRMS_LoginPassword}    ${password}
    Click Element                    ${CCHRMS_LoginBtn}
    Verify If User Is Logged In      ${username}    #used to be username
    
Verify If User Is Logged In
    [Arguments]                      ${verify_username}
    Wait Until Page Contains         ${verify_username}