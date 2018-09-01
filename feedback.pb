Procedure feedback()
  
  
InitNetwork()


mail$="Spad Feedback"
Login$ = "sojebsikder7@gmail.com"
mailto$="sojebsikder@gmail.com"
em$=InputRequester(mail$,"Enter your email for collect help.","")
body$=InputRequester(mail$,"Write something","")

If CreateMail(0, Login$ + "sojebsikder7@gmail.com", "Feedback from Spad- notepad")
  
  AddMailRecipient(0, mailto$, #PB_Mail_To)
  
 If AddMailAttachment(0, "Attachment", OpenFileRequester("Please choose file to load", StandardFile$, Pattern$, Pattern,#PB_Requester_MultiSelection))

    MessageRequester(mail$,"Attachment correctly added")
    
  Else
    
    MessageRequester(mail$,"Attachment failed. your mail is sending wait...")
    
  EndIf
  
    SetMailBody(0, "User Email : "+em$+" " +" "+ "Messege is : " +body$)
    
    If SendMail(0, "smtp.gmail.com", 587, #PB_Mail_UseSSL, Login$, "sojeb123")
      MessageRequester(mail$,"Your Attachment sent succesfully!")
    Else
      MessageRequester(mail$,"Your Attachment not sent succesfully. try again")
  EndIf
  
  EndIf
  
  
  

  
  
  EndProcedure
; IDE Options = PureBasic 5.30 (Windows - x86)
; CursorPosition = 41
; FirstLine = 4
; Folding = -
; EnableXP
; UseIcon = spadico.ico
; Executable = spadWeb.exe
; IncludeVersionInfo
; VersionField0 = 4.4.1
; VersionField1 = 4.4.1
; VersionField2 = SojebSoft Inc.
; VersionField3 = Spad - A Notepad
; VersionField4 = 4.4.1
; VersionField5 = 4.4.1
; VersionField6 = Spad - A simple text editor notepad. That can make any edit.
; VersionField7 = Spad - A Notepad
; VersionField8 = Spad - A Notepad
; VersionField9 = (c)SojebSoft Inc.
; VersionField13 = sojebsikder@gmail.com
; VersionField14 = http://www.sojebsoft.ml
; VersionField15 = VOS_DOS_WINDOWS32
; VersionField17 = 0409 English (United States)
; VersionField18 = sojebsoftware.000webhostapp.com
; VersionField21 = www.facebook.com/sojeb.sikder