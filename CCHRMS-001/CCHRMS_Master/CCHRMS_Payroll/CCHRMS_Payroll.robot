*** Settings ***
Library       SeleniumLibrary
Resource      ../../CCHRMS_Global_Variables.resource
Resource      ../../CCHRMS_Global_Keywords.resource
Resource      Payroll_Variables.resource

Test Setup        Login as HR
Test Teardown     Close Browser

*** Test Cases ***
Verify If User Can Access Payroll
    # Login To HRMS                        ${username}    ${password}
    Navigate To Menu                     ${Nav_Payroll}
    Reload HRMS
    Wait Until Page Contains Element       ${CCPayroll_SearchBtn}