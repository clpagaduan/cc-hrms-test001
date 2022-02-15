*** Settings ***
Library       SeleniumLibrary
Resource      ../../CCHRMS_Global_Variables.resource
Resource      ../../CCHRMS_Global_Keywords.resource
# Resource      LoginPage_Variables.resource

Test Setup        Open HRMS
Test Teardown     Close Browser

*** Test Cases ***
Verify If User Can Login
    Login To HRMS                        ${username_emp}    ${password_emp}
    Verify If User Is Logged In          ${username_emp}    #used to be username
    
Verify If User Can Logout From HRMS
    Login To HRMS                        ${username_emp}    ${password_emp}
    Logout HRMS
    Verify If User Is Logged Out
    
Verify If User Cannot Login With Incorrect Credentials
    Login To HRMS                        ${username_emp}    ${password_incorrect}
    Verify If User Is Not Logged In
    