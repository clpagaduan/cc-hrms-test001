*** Variables ***
${url}                     http://cchrmsapp.azurewebsites.net/Home/Login
${browser}                 chrome

# ${username}    test
# ${password}    Abc1234

# ${username_hr}    test
# ${password_hr}    Abc1234

${username_hr}    cl.sup001
${password_hr}    CLSUP1

${username_emp}                cl.emp001
${password_emp}                CLEMP1k
${password_sso}                CLEMP1
${password_old}                CLEMP1j
${password_incorrect}      FakePassword
${password_emp_new}            CLEMP1k
# ${user_dept}    Burnaby
${emp_longusername}                CL EMP 1 BC
${emp_dept}               BC Canada Computers
${emp_deptid}             128


#Login Screen
${CCHRMS_LoginUsername}    //*[@id="tb_username"]
${CCHRMS_LoginPassword}    //*[@id="tb_password"]
${CCHRMS_LoginBtn}         //*[@id="form_login"]/div[5]/input

${CCHRMS_LoginError}       Password or username error.

${CCHRMS_Tab_SignIn}       title: Sign In & Sign Out - Canada Computers Company
${CCHRMS_Tab_PC}           title: Personal Centre - Canada Computers Company

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

#Top Menu
${Top_Logout}              //a[@href="/Home/Logout"]
${Top_ChangePassword}      //*[@id="header"]/div/a[4]
${Top_Messages}            //*[@id="header"]/div/a[3]

${iframe_main}             //iframe[@name='frmMain']
