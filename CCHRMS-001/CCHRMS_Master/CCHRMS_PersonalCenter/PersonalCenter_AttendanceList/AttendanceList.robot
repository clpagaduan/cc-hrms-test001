*** Settings ***
Library       SeleniumLibrary
Resource      ../../../CCHRMS_Global_Variables.resource
Resource      ../../../CCHRMS_Global_Keywords.resource
Resource      ../PersonalCenter_Variables.resource
Resource      ../PersonalCenter_Keywords.resource
Resource      AttendanceList_Variables.resource
Resource      AttendanceList_Keywords.resource

Test Setup        Open And Login To HRMS    ${username_emp}    ${password_emp}
Test Teardown     Close Browser

*** Test Cases ***
Verify If User Can Access Attendance List
    Open Personal Center
    #Go To Leave
    Go To Submenu                             ${PersonalCenter_More}    ${PersonalCenter_AttendanceList}
    Sleep    5s
    Page Should Contain    Sign Records
    Page Should Contain    Total Time
    Page Should Contain    Payroll Time