*** Settings ***
Library       SeleniumLibrary
Resource      ../../CCHRMS_Global_Variables.resource
Resource      ../../CCHRMS_Global_Keywords.resource
Resource      ChangePassword_Variables.resource

# Test Setup        Login as Regular Employee
Test Teardown     Close Browser

*** Test Cases ***
Verify If User Can Change Password
    # Login To HRMS                        ${username}    ${password}
    Open And Login To HRMS    ${username_emp}    ${password_old}
    Wait Until Page Contains Element    ${Top_ChangePassword}
    Click Element    ${Top_ChangePassword}
    Wait Until Page Contains Element    ${CCChangePassword_Old}
    Input Password    ${CCChangePassword_Old}    ${password_old}
    Input Password    ${CCChangePassword_New}    ${password_emp_new}
    Input Password    ${CCChangePassword_Confirm}    ${password_emp_new}
    Click Element    ${CCChangePassword_Save}
    Wait Until Page Contains    ${CCChangePassword_Success}
    
Verify If User Can Use New Password
    Open And Login To HRMS    ${username_emp}    ${password_emp_new}
    Verify If User Is Logged In          ${username_emp}