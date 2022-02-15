*** Settings ***
Library       SeleniumLibrary
Resource      ../../CCHRMS_Global_Variables.resource
Resource      ../../CCHRMS_Global_Keywords.resource
Resource      LetterModule_Variables.resource

Test Setup        Login as HR
Test Teardown     Close Browser

*** Test Cases ***
Verify If User Can Access Letter Modules
    # Login To HRMS                        ${username}    ${password}
    Navigate To Menu                     ${Nav_LetterModules}
    Reload HRMS
    Wait Until Page Contains Element       ${CCLetterModule_LetterTemplates}