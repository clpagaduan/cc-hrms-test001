*** Settings ***
Library       SeleniumLibrary
Resource      ../../CCHRMS_Global_Variables.resource
Resource      ../../CCHRMS_Global_Keywords.resource
Resource      Settings_Variables.resource

Test Setup        Login as HR
Test Teardown     Close Browser

*** Test Cases ***
Verify If User Can Access Settings
    Navigate To Menu                     ${Nav_Settings}
    Reload HRMS
    Wait Until Page Contains Element       ${CCSettings_SystemSettings}