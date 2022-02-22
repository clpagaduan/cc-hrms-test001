*** Settings ***
Library       SeleniumLibrary
Resource      ../../../CCHRMS_Global_Variables.resource
Resource      ../../../CCHRMS_Global_Keywords.resource
Resource      ../PersonalCenter_Variables.resource
Resource      ../PersonalCenter_Keywords.resource
Resource      CCIntravoice_Variables.resource
Resource      CCIntravoice_Keywords.resource

Test Setup        Open And Login To HRMS    ${username_emp}    ${password_emp}
Test Teardown     Close Browser

*** Test Cases ***
Verify If User Can Access CC Intravoice
    Open Personal Center
    #Go To Leave
    Go To Submenu                             ${PersonalCenter_Communication}    ${PersonalCenter_CCIntravoice}
    Sleep    5s
    Page Should Contain    Newsletter
    Page Should Contain    Policies & Procedures