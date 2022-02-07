*** Settings ***
Library       SeleniumLibrary
Resource      ../../CCHRMS_Global_Variables.resource
Resource      ../../CCHRMS_Global_Keywords.resource
# Resource      LoginPage_Variables.resource

Test Setup        Open HRMS
Test Teardown     Close Browser

*** Test Cases ***
Verify If User Can Login
    Login tO HRMS    ${username}    ${password}