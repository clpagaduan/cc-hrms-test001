*** Settings ***
Library       SeleniumLibrary
Resource      ../../../CCHRMS_Global_Variables.resource
Resource      ../../../CCHRMS_Global_Keywords.resource
Resource      ../PersonalCenter_Variables.Resource
Resource      ../PersonalCenter_Keywords.Resource

Resource      ApplicationForLeave_Variables.resource

*** Keywords ***
Enter Leave Details
    [Arguments]                              ${replace}
    Wait Until Element Is Visible            ${Leave_Emp_Replace}    5s
    Input Text                               ${Leave_Emp_Replace}    ${replace}
    Sleep    5s
    Press Keys                               ${Leave_Emp_Replace}    ENTER
    
Add Leave Time
    Click Element                            ${Leave_AddLeaveTime}
    Wait Until Element Is Visible            ${Leave_AppType}    5s
    Click Element                            ${Leave_AppType}
    Click Element                            ${Leave_AppType_Paid}
    Wait Until Element Is Visible            ${Leave_Paid}
    Click Element                            ${Leave_Paid}
    Click Element                            ${Leave_Vacation}
    Wait Until Element Is Visible            ${Leave_Vacation_agree}    5s
    Click Element                            ${Leave_Vacation_agree}
    
Select Start Time
    Wait Until Element Is Visible            ${Start_Date}
    Click Element                            ${Start_Date}
    Click Element                            ${Start_Year}
    Click Element                            ${Start_Year_Selected}
    Click Element                            ${Start_Year_Day}
    Click Element                            ${Start_Date_Done}
    
    
Save Leave
    Wait Until Element Is Visible            ${LeaveDate_Save}    5s
    Click Element                            ${LeaveDate_Save}
    
Submit Leave
    Wait Until Element Is Visible            ${Leave_Submit}    5s
    Click Element                            ${Leave_Submit}
    Wait Until Element Is Visible            ${Leave_Submit_Confirm}    5s
    Click Element                            ${Leave_Submit_Confirm}    