*** Settings ***
Library       SeleniumLibrary
Resource      ../../CCHRMS_Global_Variables.resource
Resource      ../../CCHRMS_Global_Keywords.resource
Resource      TimecardEditor_Variables.resource
Resource      TimecardEditor_Keywords.resource

Test Setup        Login as HR
Test Teardown     Close Browser

*** Test Cases ***
Verify If User Can Access Timecard Editor
    # Login To HRMS                        ${username}    ${password}
    Navigate To Menu                     ${Nav_Timecard}
    Reload HRMS
    Wait Until Page Contains Element       ${CCTimecard_Timecard}
    
Verify If User Can Edit Timecard Record
    Navigate To Menu                     ${Nav_Timecard}
    Reload HRMS
    Wait Until Page Contains Element       ${CCTimecard_Timecard}
    Reload Timecard
    Wait Until Element Is Visible    ${Timecard_record_0}    10s
    #Select record
    Click Element    ${Timecard_record_0}
    Sleep    5s
    #Change sign out
    Click Element    ${Timecard_sso}
    Sleep    5s
    Click Element    ${Timecard_sso_hr_09}
    Click Element    ${Timecard_sso_done}
    Sleep    3s
    #Select Note Type
    Click Element    ${Timecard_notetype}
    Click Element    ${Type_TimeAdjustment}
    #Enter Notes
    Input Text    ${Timecard_notes}    ${note}
    #Save
    Click Element    ${Timecard_save}
    
Verify If Edited Timecard Was Saved
    Navigate To Menu                     ${Nav_Timecard}
    Reload HRMS
    Wait Until Page Contains Element       ${CCTimecard_Timecard}
    #Go to Adjustment
    Click Element    ${Timecard_nav_adjustment}
    Reload Timecard
    Wait Until Page Contains Element    ${Timecard_Adjustment_search}    5s
    Sleep    5s
    Click Element    ${Timecard_Adjustment_search}
    Sleep    10s
    Element Should Contain    ${Timecard_Adjustment_body}    ${note}