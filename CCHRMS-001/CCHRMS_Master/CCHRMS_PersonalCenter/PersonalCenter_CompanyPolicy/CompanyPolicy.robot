*** Settings ***
Library       SeleniumLibrary
Resource      ../../../CCHRMS_Global_Variables.resource
Resource      ../../../CCHRMS_Global_Keywords.resource
Resource      ../PersonalCenter_Variables.resource
Resource      ../PersonalCenter_Keywords.resource
Resource      CompanyPolicy_Variables.resource
Resource      CompanyPolicy_Keywords.resource

Test Setup        Open And Login To HRMS    ${username_emp}    ${password_emp}
Test Teardown     Close Browser

*** Test Cases ***
Verify If User Can Access Company Policy
    Open Personal Center
    #Go To Leave
    Go To Submenu                             ${PersonalCenter_Communication}    ${PersonalCenter_Policy}
    Sleep    5s
    Page Should Contain    Read & Accept