*** Variable ***
${CCSignIn_Dropdown}    //*[@id="TB_EmpDepartment"]

${CCSignIn_URL}        http://cchrmsapp.azurewebsites.net/SignInAndSignOut/Index

${CCSignIn_Password}    //*[@id="TB_Pwd"]
${CCSignIn_btn_ok}      //*[@id="BT_OK"]
${CCSignIn_LoginSuccess}    You have signed in.
${CCSignIn_LogoutSuccess}    You have signed out.

# ${user_deptid_dropdown}            /li[@id='${user_deptid}']
# ${user_deptid_dropdown}            //*[contains(text(), '${user_dept}')]