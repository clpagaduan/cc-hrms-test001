*** Settings ***
Library       SeleniumLibrary
Resource      ../../CCHRMS_Global_Variables.resource
Resource      ../../CCHRMS_Global_Keywords.resource
Resource      Dashboard_Variables.resource

Test Setup        Login as HR
Test Teardown     Close Browser

*** Test Cases ***
Verify If User Can Access Dashboard
    # Login To HRMS                        ${username}    ${password}
    Navigate To Menu                     ${Nav_Dashboard}
    Reload HRMS
    Wait Until Page Contains Element       ${CCDashboard_Performance}    10s