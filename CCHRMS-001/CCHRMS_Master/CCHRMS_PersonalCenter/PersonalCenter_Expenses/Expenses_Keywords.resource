*** Settings ***
Library       SeleniumLibrary
Resource      ../../../CCHRMS_Global_Variables.resource
Resource      ../../../CCHRMS_Global_Keywords.resource
Resource      ../PersonalCenter_Variables.Resource
Resource      ../PersonalCenter_Keywords.Resource

Resource      Expenses_Variables.resource

*** Keywords ***
Create Expense
    Click Element    ${Expense_Create}
    Input Text    ${Expense_Desc}    ${desc}
    Click Element    ${Expense_check_mileage}
    
Select Start Date
    Click Element    ${Expense_Start_Date}
    Wait Until Element Is Visible    ${Expense_Start_Today}    5s
    Click Element    ${Expense_Start_Today}
    
Select End Date
    Click Element    ${Expense_End_Date}
    Wait Until Element Is Visible    ${Expense_End_Today}    5s
    Click Element    ${Expense_End_Today}
    
Save Expense
    Wait Until Element Is Visible    ${Expense_Save}
    Click Element    ${Expense_Save}
    Sleep    5s
    Page Should Contain    Operate Successfully!
    Sleep    5s
    Reload Personal Center
    Wait Until Element Is Visible    ${Expense_Confirm}
    Click Element   ${Expense_Confirm}
    Sleep    5s
    
Click Edit of First Record
    Click Element    ${Expense_edit_0}
    Wait Until Element Is Visible    ${Expense_Desc}

