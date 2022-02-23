*** Settings ***
Library       SeleniumLibrary
Resource      ../../CCHRMS_Global_Variables.resource
Resource      ../../CCHRMS_Global_Keywords.resource
Resource      EmployeeProfile_Variables.Resource

*** Keywords ***
Select Department From Dropdown
    Click Element    ${CCEmployeeProfile_Dropdown}
    Sleep    5s
    Click Element    //*[@id="${CCEmployeeProfile_DeptID}"]/div/span
    # Select From List By Label    ${CCEmployeeProfile_Dropdown_List}    ${CCEmployeeProfile_Dept}
    # Mouse Down                       //*[contains(text(), '${CCEmployeeProfile_Dept}')]
    # Click Element                    //li[contains(text(),'Philippines Office']
    # Click Element                      //*[contains(text(), '${CCEmployeeProfile_Dept}')]
    Sleep    5s
    
Select Department from Dropdown Create
    Click Element    ${CCEmployeeProfile_Create_Department}
    Sleep    5s
    Click Element    //*[@id="${CCEmployeeProfile_DeptID}"]/div/span
    Sleep    5s
    
Click Sign In Box
    Click Element                      //span[contains(text(), '${emp_longusername}')]
    
Search For Employee
    [Arguments]    ${employee}
    Input Text    ${CCEmployeeProfile_QuickSearch}    ${employee}
    Wait Until Element Is Visible    //a[contains(text(),'${employee}')]    5s
    Click Element    //a[contains(text(),'${employee}')]
    #USED TO BE ${SEARCH_RESULTS}
    Sleep    5s
    Element Should Contain   ${CCEmployeeProfile_Header_Name}    ${employee} 
    