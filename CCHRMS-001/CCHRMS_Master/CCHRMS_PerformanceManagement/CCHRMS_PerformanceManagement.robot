*** Settings ***
Library       SeleniumLibrary
Resource      ../../CCHRMS_Global_Variables.resource
Resource      ../../CCHRMS_Global_Keywords.resource
Resource      PerformanceManagement_Variables.resource

Test Setup        Login as HR
Test Teardown     Close Browser

*** Test Cases ***
Verify If User Can Access Performance Management
    Navigate To Menu                          ${Nav_Performance}
    Reload HRMS
    Wait Until Page Contains Element          ${CCPerformance_ManagementPerformance}