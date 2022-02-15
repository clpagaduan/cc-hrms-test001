*** Settings ***
Library       SeleniumLibrary
Resource      CCHRMS_Global_Variables.resource

*** Keywords ***

Open HRMS
    Open Browser    ${url}    ${browser}
    
Login As Regular Employee
    Open And Login To HRMS    ${username_emp}    ${password_emp}
    
Login as HR
    Open And Login To HRMS    ${username_hr}    ${password_hr}
    
Open And Login To HRMS
    [Arguments]    ${login_username}    ${login_password}
    Open HRMS
    Login To HRMS    ${login_username}    ${login_password}
    
Login To HRMS
    [Arguments]                      ${username}    ${password}
    Input Text                       ${CCHRMS_LoginUsername}    ${username}
    Input Password                   ${CCHRMS_LoginPassword}    ${password}
    Click Element                    ${CCHRMS_LoginBtn}
    
    
Verify If User Is Logged In
    [Arguments]                      ${verify_username}
    Wait Until Page Contains         ${verify_username}    10s
    
Verify If User Is Not Logged In
    Wait Until Page Contains         ${CCHRMS_LoginError}
    
Verify If User Is Logged Out
    Page Should Contain Element       ${CCHRMS_LoginBtn} 
    
Navigate To Menu
    [Arguments]                      ${Menu}
    Wait Until Element Is Visible    ${Menu}    5s
    Click Link                       ${Menu}
    Sleep    5s
    
Logout HRMS
    Wait Until Element Is Visible    ${Top_Logout}    5s
    Click Link                       ${Top_Logout}
    
Reload HRMS
    Select Frame                         ${iframe_main}
    
