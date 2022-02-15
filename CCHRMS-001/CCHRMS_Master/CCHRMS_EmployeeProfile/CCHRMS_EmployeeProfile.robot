*** Settings ***
Library       SeleniumLibrary
Resource      ../../CCHRMS_Global_Variables.resource
Resource      ../../CCHRMS_Global_Keywords.resource
Resource      EmployeeProfile_Variables.resource

Test Setup        Login as HR
Test Teardown     Close Browser

*** Test Cases ***
Verify If User Can Access Employee Profile
    Navigate To Menu                     ${Nav_EmployeeProfile}
    Reload HRMS
    Wait Until Page Contains Element         ${CCEmployeeProfile_save}