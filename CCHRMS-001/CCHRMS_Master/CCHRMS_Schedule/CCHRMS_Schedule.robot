*** Settings ***
Library       SeleniumLibrary
Resource      ../../CCHRMS_Global_Variables.resource
Resource      ../../CCHRMS_Global_Keywords.resource
Resource      Schedule_Variables.resource

Test Setup        Login as HR
Test Teardown     Close Browser

*** Test Cases ***
Verify If User Can Access Schedule
    Navigate To Menu                     ${Nav_Schedule}
    Reload HRMS
    Wait Until Page Contains Element       ${CCSchedule_Search}