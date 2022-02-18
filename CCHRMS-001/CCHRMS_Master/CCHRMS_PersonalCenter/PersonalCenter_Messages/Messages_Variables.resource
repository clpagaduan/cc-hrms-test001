*** Variables ***

${Message_Recipient_1}    //a[@href="/PersonalCenter/Message?MsgType=1&&sendTo=D1F1B6C6-CE06-4779-BA38-1BE196CADF62"]
${Message_Subject}        //*[@id="an_Subject"]
${Message_Textbox}        //*[@id="tinymce"]
${Message_Textbox_frame}    //*[@id="an_Content_ifr"]
${Message_Btn_Save}        //*[@id="bt_SendAnswerMsg"]

${Message_Outbox}         //*[@id="Msg_Nav"]/li[3]

#Content

${text_subject}    test subject 1
${text_body}       test body