*** Settings ***
Library       SeleniumLibrary
Resource      ../../CCHRMS_Global_Variables.resource
Resource      ../../CCHRMS_Global_Keywords.resource
Resource      Messages_Variables.resource
# Resource      EmployeeProfile_Keywords.resource

Test Setup        Login as HR
Test Teardown     Close Browser

*** Test Cases ***
Verify If User Can Open Messages
    Wait Until Element Is Visible    ${Top_Messages}
    Click Element    ${Top_Messages}
    Wait Until Element Is Visible    ${Messages_content}

