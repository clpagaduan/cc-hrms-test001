*** Variables ***

${Expense_Create}            //*[@id="btnNewExpense"]
${Expense_Search}            //*[@id="btn_search"]
${Expense_Desc}              //*[@id="editExpenseName"]
${Expense_check_mileage}     //*[@id="ckExpenseType_1"]

${Expense_Start_Date}        //*[@id="editStartDate"]
${Expense_Start_Today}       //*[@id="ui-datepicker-div"]/div[2]/button[1]

${Expense_End_Date}          //*[@id="editEndDate"]
${Expense_End_Today}         //*[@id="ui-datepicker-div"]/div[2]/button[1]

${Expense_Save}              //*[@id="btnSaveExpense"]
${Expense_Confirm}           //*[@id="BT_Confirm_Yes_Notes"]

${Expense_edit_0}            //*[@onclick="editExpense(0)"]


${desc}                      test expense
${desc1}                     test expense 3

${Leave_Create}           //*[@id="btn_add"]
${Leave_Emp_Replace}      //*[@id="EmployeeSearch"]
${Leave_AddLeaveTime}     //*[@value="Add Leave Time"]

${Leave_AppType}          //*[@id="dk_container_sel_paidType"]
${Leave_AppType_Paid}             //*[@id="dk_container_sel_paidType"]/div/ul/li[2]/a

${Leave_Paid}             //*[@id="dk_container_sel_AvoidType"]
${Leave_Vacation}         //*[@id="dk_container_sel_AvoidType"]/div/ul/li[3]/a

${Leave_Vacation_agree}   //*[@id="btn_Ok"]

${Start_Date}             //*[@id="txtStartTime"]
${Start_Date_Value}       //*[@id="txtStartTime"]
${Start_Year}             //*[@id="ui-datepicker-div"]/div[1]/div/div/select[2]
${Start_Year_Selected}    //*[@id="ui-datepicker-div"]/div[1]/div/div/select[2]/option[2]
${Start_Year_Day}         //*[@id="ui-datepicker-div"]/div[1]/table/tbody/tr[3]/td[4]
${Start_Date_Done}        //*[@id="ui-datepicker-div"]/div[4]/button[2]
${LeaveDate_Save}             //*[@id="btn_Save"]
${Leave_Submit}           //*[@id="btn_Submit"]
${Leave_Submit_Confirm}   //*[@id="BT_Confirm_Yes_Notes"]



${Emp_replace}            CL EMP 3
