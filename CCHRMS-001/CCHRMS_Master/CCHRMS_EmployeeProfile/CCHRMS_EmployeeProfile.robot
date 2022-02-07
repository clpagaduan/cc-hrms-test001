*** Settings ***
Library       SeleniumLibrary
Resource      ../../CCHRMS_Global_Variables.resource
Resource      ../../CCHRMS_Global_Keywords.resource
Resource      EmployeeProfile_Variables.resource

Test Setup        Open HRMS
Test Teardown     Close Browser

*** Test Cases ***
Verify If User Can Access Employee Profile
    Login To HRMS                        ${username}    ${password}
    Navigate To Menu                     ${Nav_EmployeeProfile}
    Wait Until Element Is Visible        ${CCEmployeeProfile_fname}    5s
    