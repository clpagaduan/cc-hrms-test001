*** Settings ***
Library       SeleniumLibrary
Resource      ../../../CCHRMS_Global_Variables.resource
Resource      ../../../CCHRMS_Global_Keywords.resource
Resource      ../PersonalCenter_Variables.resource
Resource      ../PersonalCenter_Keywords.resource
Resource      Expenses_Variables.resource
Resource      Expenses_Keywords.resource

Test Setup        Open And Login To HRMS    ${username_emp}    ${password_emp}
Test Teardown     Close Browser

*** Test Cases ***
Verify If User Can Access Expenses
    Open Personal Center
    #Go To Leave
    Go To Submenu                             ${PersonalCenter_Application}    ${PersonalCenter_Expenses}
    Wait Until Element Is Visible    ${Expense_Create}

Verify If User Can Create An Expense
    Open Personal Center
    #Go To Leave
    Go To Submenu                             ${PersonalCenter_Application}    ${PersonalCenter_Expenses}
    Wait Until Element Is Visible    ${Expense_Create}
    Click Element    ${Expense_Search}
    Create Expense
    Select Start Date
    Select End Date
    Save Expense
    
Verify If User Can Edit An Expense
    Open Personal Center
    #Go To Leave
    Go To Submenu                             ${PersonalCenter_Application}    ${PersonalCenter_Expenses}
    Wait Until Element Is Visible    ${Expense_Create}
    Click Element    ${Expense_Search}
    Sleep    5s
    Click Edit of First Record
    #Change text
    ${old_desc}    Get Element Attribute    ${Expense_Desc}    value
    Log    ${old_desc}
    Input Text    ${Expense_Desc}    ${desc1}
    Save Expense
    Click Edit of First Record
    ${new_desc}    Get Element Attribute    ${Expense_Desc}    value
    Log    ${new_desc}
    Should Not Be Equal    ${old_desc}    ${new_desc}
    
    