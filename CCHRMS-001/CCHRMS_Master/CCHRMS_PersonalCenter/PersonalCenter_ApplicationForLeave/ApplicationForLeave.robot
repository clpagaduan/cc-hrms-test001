*** Settings ***
Library       SeleniumLibrary
Resource      ../../../CCHRMS_Global_Variables.resource
Resource      ../../../CCHRMS_Global_Keywords.resource
Resource      ../PersonalCenter_Variables.resource
Resource      ../PersonalCenter_Keywords.resource
Resource      ApplicationForLeave_Variables.resource
Resource      ApplicationForLeave_Keywords.resource

Test Setup        Open And Login To HRMS    ${username_emp}    ${password_emp}
# Test Teardown     Close Browser

*** Test Cases ***
Verify If User Can Access Personal Center
    Open Personal Center
    #Go To Leave
    Mouse Over    ${PersonalCenter_Application}
    Click Element    ${PersonalCenter_Leave}
    Reload Personal Center
    #Create Leave
    Click Element    ${Leave_Create}
    #Enter Details
    Wait Until Element Is Visible    ${Leave_Emp_Replace}    5s
    Input Text    ${Leave_Emp_Replace}    ${Emp_replace}
    Sleep    5s
    Press Keys    ${Leave_Emp_Replace}    ENTER
    #Add Leave Time
    Click Element    ${Leave_AddLeaveTime}
    