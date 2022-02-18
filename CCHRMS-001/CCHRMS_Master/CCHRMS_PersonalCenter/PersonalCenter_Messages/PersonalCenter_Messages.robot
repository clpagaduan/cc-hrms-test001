*** Settings ***
Library       SeleniumLibrary
Resource      ../../../CCHRMS_Global_Variables.resource
Resource      ../../../CCHRMS_Global_Keywords.resource
Resource      ../PersonalCenter_Variables.resource
Resource      ../PersonalCenter_Keywords.resource
Resource      Messages_Variables.resource
Resource      Messages_Keywords.resource

Test Setup        Open And Login To HRMS    ${username_emp}    ${password_emp}
Test Teardown     Close Browser

*** Test Cases ***
Verify If User Can Send A Message In Personal Center
    Open Personal Center
    Click Recipient                    ${Message_Recipient_1}
    Enter Message Subject              ${text_subject}
    Enter Message Body                 ${text_body}
    Send Message
    Verify If Message Has Been Sent
