*** Settings ***
Library       SeleniumLibrary
Resource      ../../CCHRMS_Global_Variables.resource
Resource      ../../CCHRMS_Global_Keywords.resource
Resource      Forms_Variables.resource

Test Setup        Login as HR
Test Teardown     Close Browser

*** Test Cases ***
Verify If User Can Access Forms
    # Login To HRMS                        ${username}    ${password}
    Navigate To Menu                     ${Nav_Forms}
    Reload HRMS
    Wait Until Page Contains Element          ${CCForms_Acquisition}