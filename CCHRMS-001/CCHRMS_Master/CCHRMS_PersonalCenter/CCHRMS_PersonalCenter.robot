*** Settings ***
Library       SeleniumLibrary
Resource      ../../CCHRMS_Global_Variables.resource
Resource      ../../CCHRMS_Global_Keywords.resource
Resource      PersonalCenter_Variables.resource
Resource      PersonalCenter_Keywords.resource

Test Setup        Open And Login To HRMS    ${username_emp}    ${password_emp}
Test Teardown     Close Browser

*** Test Cases ***
Verify If User Can Access Personal Center
    # Open And Login To HRMS    ${username_emp}    ${password_emp}
    Open Personal Center
    
Verify If Personal Center Info Is Visible
    Open Personal Center
    Page Should Contain Element    ${PersonalCenter_Info}
    
Verify If Department List Is Visible
    Open Personal Center
    Page Should Contain Element    ${PersonalCenter_MemberList}
    
Verify If Recent Messages Are Visible
    Open Personal Center
    Reload Personal Center
    Page Should Contain Element    ${PersonalCenter_Messages}
    
Verify If Calendar Is Visible
    Open Personal Center
    Reload Personal Center
    Page Should Contain Element    ${PersonalCenter_Calendar}
    
Verify If Notice Board Is Visible
    Open Personal Center
    Reload Personal Center
    Page Should Contain Element   ${PersonalCenter_NoticeBoard}
    
Verify If Spiff and Comission Is Visible
    Open Personal Center
    Reload Personal Center
    Page Should Contain Element    ${PersonalCenter_PaidHistory}
    
Verify If Recent Applications Is Visible
    Open Personal Center
    Reload Personal Center
    Page Should Contain Element   ${PersonalCenter_RecentApp}
    # Sleep    15s
    # Close Browser
    
    # Click Element                    //li[contains(text(),'${user_dept}')]
    # Click Element                     //ul[@class='l-first l-last l-onlychild ']/li[.='Burnaby']
    # Click Element                      //li[@id='${user_deptid}']
    