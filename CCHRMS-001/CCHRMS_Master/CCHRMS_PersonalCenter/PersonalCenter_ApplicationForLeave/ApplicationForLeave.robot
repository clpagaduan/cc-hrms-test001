*** Settings ***
Library       SeleniumLibrary
Resource      ../../../CCHRMS_Global_Variables.resource
Resource      ../../../CCHRMS_Global_Keywords.resource
Resource      ../PersonalCenter_Variables.resource
Resource      ../PersonalCenter_Keywords.resource
Resource      ApplicationForLeave_Variables.resource
Resource      ApplicationForLeave_Keywords.resource

Test Setup        Open And Login To HRMS    ${username_emp}    ${password_emp}
Test Teardown     Close Browser

*** Test Cases ***
#To do: edit and delete since this is not sorted by created descending
Verify If User Can File And Submit Leave
    Open Personal Center
    #Go To Leave
    Go To Submenu                             ${PersonalCenter_Application}    ${PersonalCenter_Leave}
    #Create Leave
    Click Element                             ${Leave_Create}
    Enter Leave Details                       ${Emp_replace}
    Add Leave Time                     
    Select Start Time
    ${value_date}    Get Element Attribute    ${Start_Date_Value}    value
    Log                                       ${value_date}
    Save Leave
    Submit Leave
    Sleep    5s
    Page Should Contain                       ${value_date}        

