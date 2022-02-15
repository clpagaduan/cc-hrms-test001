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
    Navigate To Menu                     ${Nav_PersonalCenter}
    Sleep    10s
    Switch Window                        ${CCHRMS_Tab_PC}
    Sleep    5s
    Page Should Contain         ${emp_longusername}
    
    # Click Element                    //li[contains(text(),'${user_dept}')]
    # Click Element                     //ul[@class='l-first l-last l-onlychild ']/li[.='Burnaby']
    # Click Element                      //li[@id='${user_deptid}']
    