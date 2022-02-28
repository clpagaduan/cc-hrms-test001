*** Settings ***
Library       SeleniumLibrary
Resource      ../../CCHRMS_Global_Variables.resource
Resource      ../../CCHRMS_Global_Keywords.resource
Resource      SignInSignOut_Variables.resource
Resource      SignInSignOut_Keywords.resource

Test Setup        Open And Login To HRMS    ${username_emp}    ${password_emp}
Test Teardown     Close Browser

*** Test Cases ***
Verify If User Can Access Sign In Sign Out Module
    Navigate To Menu                     ${Nav_SignInSignOut}
    Switch Window                        ${CCHRMS_Tab_SignIn}
    Sleep    5s
    Page Should Contain Element          ${CCSignIn_Dropdown}
    
    # Click Element                    //li[contains(text(),'${user_dept}')]
    # Click Element                     //ul[@class='l-first l-last l-onlychild ']/li[.='Burnaby']
    # Click Element                      //li[@id='${user_deptid}']
    
    
Verify If User Can Sign In
    Navigate To Menu                     ${Nav_SignInSignOut}
    Switch Window                        ${CCHRMS_Tab_SignIn}
    Sleep    5s
    Select Department From Dropdown      ${emp_dept}
    Click Sign In Box
    Wait Until Element Is visible        ${CCSignIn_Password} 
    Input Password                       ${CCSignIn_Password}    ${password_sso}
    Click Button                         ${CCSignIn_btn_ok}
    Wait Until Page Contains             ${CCSignIn_LoginSuccess}
    Sleep    10s
    
Verify If User Can Logout
    Navigate To Menu                     ${Nav_SignInSignOut}
    Switch Window                        ${CCHRMS_Tab_SignIn}
    Sleep    5s
    Select Department From Dropdown      ${emp_dept}
    Click Sign In Box
    Wait Until Element Is visible        ${CCSignIn_Password} 
    Input Password                       ${CCSignIn_Password}    ${password_sso}
    Click Button                         ${CCSignIn_btn_ok}
    Wait Until Page Contains             ${CCSignIn_LogoutSuccess}
    Sleep    10s
    