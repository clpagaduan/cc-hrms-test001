*** Variables ***
${CCEmployeeProfile_fname}    //*[@id="TB_FirstName"]
${CCEmployeeProfile_save}     //*[@id="TB_Save"]

${CCEmployeeProfile_Dropdown}    //*[@id="TB_Department"]
${CCEmployeeProfile_Dropdown_List}    //*[@id="departmentHolder"]

${CCEmployeeProfile_Dept}    Philippines Office
${CCEmployeeProfile_DeptID}    146

${CCEmployeeProfile_Create_Department}    //*[@id="TB_EmpDepartment"]

${CCEmployeeProfile_Header_Name}    //*[@id="span_EmployeeName"]
${CCEmployeeProfile_QuickSearch}    //*[@id="EmployeeSearch"]

#Required fields to create new employee

${Field_fname}               //*[@id="TB_FirstName"]
${Field_lname}               //*[@id="myform"]/div/div[1]/input[2]
${Field_addr}                //*[@id="myform"]/div/div[5]/input
${Field_email_hrms}          //*[@id="myform"]/div/div[17]/input
# ${Field_fday}                //*[@id="dp1645084289129"]
${Field_fday}                //input[@placeholder="First Day Of Work"]
${Field_wage}                //*[@id="TB_BasicPay"]
${Field_wage_confirm}        //*[@id="TB_Wage_Confirm"]
${Field_allowance}           //*[@id="TB_Allowance"]
# ${Field_wage_monthly}           //*[@id="radioWageMonth"]
${Field_wage_monthly}           //*[@id="divPayrollUnit"]/span[3]/label
${Field_password}            //*[@id="TB_Password"]
${Field_password_confirm}    //*[@id="TB_Password_Confirm"]
${Field_nickname}            //input[@placeholder="Nickname"]
${Field_vacation_dropdown}    //*[@id="dk_container_sel_vacationLevel"]
${Field_vacation}            //*[@id="sel_vacationLevel"]
${Field_vacation_select}     //*[@id="dk_container_sel_vacationLevel"]/div/ul/li[3]/a


${New_fname}            Yumeko
${New_lname}            Jabami
${New_nickname}         Yumeko
${New_dept}             //*[@id="146"]/div/span
${New_addr}             75 West Wilmot St
${New_email_hrms}       cc.test2@yopmail.com
${New_fday}             12/21/21
${New_wage}             15000
${New_allowance}        500
${New_wage_total}       15500
${New_password}         CCTEST1
${New_vacation}         Regular full-time salaried

${New_name}    ${New_fname} ${New_lname}

${Search_emp}    CL SUP 1
${Search_results}    //a[contains(text(),'${Search_emp}')]