*** Variables ***
${url}    http://cchrmsapp.azurewebsites.net/Home/Login
${browser}    Chrome

${username}    test
${password}    Abc1234

${CCHRMS_LoginUsername}    //*[@id="tb_username"]
${CCHRMS_LoginPassword}    //*[@id="tb_password"]
${CCHRMS_LoginBtn}         //*[@id="form_login"]/div[5]/input