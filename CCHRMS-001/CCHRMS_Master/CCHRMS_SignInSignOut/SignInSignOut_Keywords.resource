*** Settings ***
Library       SeleniumLibrary
Resource      ../../CCHRMS_Global_Variables.resource
Resource      ../../CCHRMS_Global_Keywords.resource
Resource      SignInSignOut_Variables.Resource

*** Keywords ***
#Refactor this soon
Select Department From Dropdown
    [Arguments]                        ${dept}
    Click Element                      ${CCSignIn_Dropdown}
    Sleep    5s
    Click Element                      //*[contains(text(), '${dept}')]
    # Click Element                      //*[contains(text(), '${emp_dept}')]
    Sleep    5s
    
Click Sign In Box
    Click Element                      //span[contains(text(), '${emp_longusername}')]