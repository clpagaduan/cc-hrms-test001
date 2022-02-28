*** Settings ***
Library       SeleniumLibrary
Resource      ../../CCHRMS_Global_Variables.resource
Resource      ../../CCHRMS_Global_Keywords.resource
Resource      EmployeeProfile_Variables.resource
Resource      EmployeeProfile_Keywords.resource

Test Setup        Login as HR
Test Teardown     Close Browser

*** Test Cases ***
#TO DO - Active/Inactive Only

Verify If User Can Access Employee Profile
    Navigate To Menu                          ${Nav_EmployeeProfile}
    Reload HRMS
    Wait Until Page Contains Element          ${CCEmployeeProfile_save}
    
Verify If User Can Select Department
    Navigate To Menu                          ${Nav_EmployeeProfile}
    Reload HRMS
    Sleep    10s
    Wait Until Page Contains Element          ${CCEmployeeProfile_Dropdown}    10s
    Select Department From Dropdown
   
    
Verify If User Can Search For Employee
    Navigate To Menu                          ${Nav_EmployeeProfile}
    Reload HRMS
    Sleep    10s
    Wait Until Page Contains Element          ${CCEmployeeProfile_Dropdown}    10s
    Search For Employee                       ${Search_Emp}
    
Verify If User Can Add New Employee
    Navigate To Menu                          ${Nav_EmployeeProfile}
    Reload HRMS
    Sleep    10s
    Wait Until Page Contains Element          ${CCEmployeeProfile_Dropdown}    10s
    Input Text                                ${Field_fname}    ${New_fname}
    Input Text                                ${Field_lname}    ${New_lname}
    Select Department from Dropdown Create
    Input Text                                ${Field_addr}     ${New_addr}
    Input Text                                ${Field_email_hrms}    ${New_email_hrms}
    Input Text                                ${Field_wage}    ${New_wage}
    Input Text                                ${Field_allowance}    ${New_allowance}
    Sleep    5s
    Click Element                             ${Field_wage_monthly}
    Input Text                                ${Field_wage_confirm}    ${New_wage_total}
    Click Element                             ${Field_vacation_dropdown}
    Click Element                             ${Field_vacation_select}
    Input Text                                ${Field_fday}    ${New_fday}    
    Input Password                            ${Field_password}    ${New_password}
    Input Password                            ${Field_password_confirm}    ${New_password}
    Click Button                              ${CCEmployeeProfile_save}
    Sleep    15s
    Element Should Contain                    ${CCEmployeeProfile_Header_Name}    ${New_name} 
    
Verify If Newly Added Employee Was Saved
    Navigate To Menu                          ${Nav_EmployeeProfile}
    Reload HRMS
    Sleep    10s
    Wait Until Page Contains Element          ${CCEmployeeProfile_Dropdown}    10s
    Search For Employee                       ${New_name}

