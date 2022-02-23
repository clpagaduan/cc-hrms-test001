*** Settings ***
Library       SeleniumLibrary
Resource      ../../CCHRMS_Global_Variables.resource
Resource      ../../CCHRMS_Global_Keywords.resource
Resource      TimecardEditor_Variables.Resource

*** Keywords ***

# Select Department From Dropdown
    # Click Element    ${CCSignIn_Dropdown}
    # Sleep    5s
    # Click Element                      //*[contains(text(), '${user_dept}')]
    # Sleep    5s
    # Click Element                      //span[contains(text(), '${user_emp}')]
    
Reload Timecard
    Select Frame                         ${Timecard_frame}
