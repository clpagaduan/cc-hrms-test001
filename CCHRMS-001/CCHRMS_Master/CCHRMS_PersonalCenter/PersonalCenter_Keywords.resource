*** Settings ***
Library       SeleniumLibrary
Resource      ../../CCHRMS_Global_Variables.resource
Resource      ../../CCHRMS_Global_Keywords.resource
Resource      PersonalCenter_Variables.Resource

*** Keywords ***
Open Personal Center
    Navigate To Menu                     ${Nav_PersonalCenter}
    Sleep    10s
    Switch Window                        ${CCHRMS_Tab_PC}
    Set Window Size                  1920    1080
    Maximize Browser Window
    Sleep    5s
    Page Should Contain         ${emp_longusername}
    
Reload Personal Center
    Sleep    5s
    Select Frame    ${PersonalCenter_Frame}
    
Go To Submenu
    [Arguments]    ${topmenu}    ${submenu}
    Mouse Over                                ${topmenu}
    Click Element                             ${submenu}
    Reload Personal Center