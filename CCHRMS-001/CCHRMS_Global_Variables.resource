*** Variables ***
${url}    http://cchrmsapp.azurewebsites.net/Home/Login
${browser}    Chrome

${username}    test
${password}    Abc1234

#Login Screen
${CCHRMS_LoginUsername}    //*[@id="tb_username"]
${CCHRMS_LoginPassword}    //*[@id="tb_password"]
${CCHRMS_LoginBtn}         //*[@id="form_login"]/div[5]/input

#Navigation Menu
${Nav_EmployeeProfile}     //a[@href="/Employee/Index"]
${Nav_Schedule}            //a[@href="/Schedule/Index"]
${Nav_SignInSignOut}       //a[@href="/SignInAndSignOut/Index"]
${Nav_Timecard}            //a[@href="/TimeCard/Index"]
${Nav_LetterModules}       //a[@href="/LetterModules/Index"]
${Nav_Dashboard}           //a[@href="/DashBoard/Index"]
${Nav_Performance}         //a[@href="/Performance/Index"]
${Nav_Forms}               //a[@href="/Forms/Index"]
${Nav_Settings}            //a[@href="/System/Settings"]
${Nav_Payroll}             //a[@href="/Salary/Index"]
${Nav_PersonalCenter}      //a[@href="/PersonalCenter/PersonalCenter"]