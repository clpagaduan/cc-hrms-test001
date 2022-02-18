*** Settings ***
Library       SeleniumLibrary
Resource      ../../../CCHRMS_Global_Variables.resource
Resource      ../../../CCHRMS_Global_Keywords.resource
Resource      ../PersonalCenter_Variables.Resource
Resource      ../PersonalCenter_Keywords.Resource

Resource      Messages_Variables.resource

*** Keywords ***
Click Recipient
    [Arguments]    ${recipient}
    Click Element            ${recipient}
    Reload Personal Center
    
Enter Message Subject
    [Arguments]    ${subject}
    Wait Until Element Is Visible    ${Message_Subject}
    Input Text    ${Message_Subject}    ${subject}
    
Enter Message Body
    [Arguments]    ${message}
    Select Frame    ${Message_Textbox_frame} 
    Input Text    ${Message_Textbox}    ${message}
    
Send Message
    Switch Window                        ${CCHRMS_Tab_PC}
    Reload Personal Center
    Click Element    ${Message_Btn_Save}
    
Verify If Message Has Been Sent
    Wait Until Element Is Visible    ${Message_Outbox}
    Click Element    ${Message_Outbox}
    Sleep    5s
    Page Should Contain    ${text_subject}