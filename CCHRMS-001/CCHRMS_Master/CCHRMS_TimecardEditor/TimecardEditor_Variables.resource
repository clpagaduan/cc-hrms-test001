*** Variable ***
${CCTimecard_Timecard}              //a[@href="/TimeCard/TimeCard"]
${Timecard_frame}                   //*[@id="frmContent"]
# ${Timecard_frame_adjustment}        //*[@id="frmContent"]
${Timecard_nav_adjustment}          //a[@href="/TimeCard/TimeCardAdjustment"]

# ${Timecard_record_0}    //*[@onclick="editTimeCard('02/22/2022 08:43','02/22/2022 08:43','D9914612-3AEE-45FC-8210-618B51399F73','2939073','2939074','D9914612-3AEE-45FC-8210-618B51399F73','02/22/2022')"]
${Timecard_record_0}                //td[@id='div_timecardholder|2|r1001|c115']//div[@class='l-grid-row-cell-inner']//div//span[@title='Click to edit this sign record']
${Timecard_sso}                     //*[@id="TB_SignOutTime"]
${Timecard_sso_hr_09}               //a[contains(text(),'09')]
# ${Timecard_sso_mn_30}    //a[contains(text(),'30')]
${Timecard_sso_done}                //button[contains(text(),'Done')]

${Timecard_notetype}                //*[@id="dk_container_sel_confirm_noteType"]/a/span

${Timecard_notes}                   //*[@id="TB_Notes"]
${Timecard_save}                    //*[@id="btn_signEditClock"]

${Type_TimeAdjustment}              //a[contains(text(),'Time Adjustment')]

${note}                             note test 2


${Timecard_Adjustment_search}       //*[@id="btn_search"]
${Timecard_Adjustment_body}         //*[@id="body"]