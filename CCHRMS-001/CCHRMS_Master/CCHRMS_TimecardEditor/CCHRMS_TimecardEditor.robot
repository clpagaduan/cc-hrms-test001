*** Settings ***
Library       SeleniumLibrary
Resource      ../../CCHRMS_Global_Variables.resource
Resource      ../../CCHRMS_Global_Keywords.resource
Resource      TimecardEditor_Variables.resource

Test Setup        Login as HR
Test Teardown     Close Browser

*** Test Cases ***
Verify If User Can Access Timecard Editor
    # Login To HRMS                        ${username}    ${password}
    Navigate To Menu                     ${Nav_Timecard}
    Reload HRMS
    Wait Until Page Contains Element       ${CCTimecard_Timecard}