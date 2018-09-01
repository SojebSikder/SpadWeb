IncludeFile "feedback.pb"
name$ ="SpadWeb"
Procedure ResizeWebWindow()
  ResizeGadget(14, 10,40, WindowWidth(0)-21, WindowHeight(0)-83)

EndProcedure

StandardFile$ = "desktop"   ; set initial file+path to display
  ; With next string we will set the search patterns ("|" as separator) for file displaying:
  ;  1st: "Text (*.txt)" as name, ".txt" and ".bat" as allowed extension
  ;  2nd: "PureBasic (*.pb)" as name, ".pb" as allowed extension
  ;  3rd: "All files (*.*) as name, "*.*" as allowed extension, valid for all files
  Pattern$ = "All files (*.*)|*.*"
  Pattern = 0    ; use the first of the three possible patterns as standard
  ;File$ = OpenFileRequester("Please choose file to load", StandardFile$, Pattern$, Pattern)
  
;OpenFileRequester("Choose an attachment", "", "", 0)


 ;...........................popupmenu..........................
  CreatePopupMenu(0)
 
  MenuItem(5, "Copy")
  MenuItem(6, "Paste")
    MenuItem(9, "Clear All")
    MenuItem(14, "Replace")
  CloseSubMenu()
  MenuBar()
  MenuItem( 3, "Quit")
  












color=RGB(23,201,232)
;Create a notepad
dal$="Dailouge off"
OpenWindow(0,100,100,900,700,"SpadWeb - a simple Web Coder",#PB_Window_SystemMenu| #PB_Window_MinimizeGadget | #PB_Window_MaximizeGadget | #PB_Window_SizeGadget)
AddKeyboardShortcut(Window_0, #PB_Shortcut_Control | #PB_Shortcut_D, 13)
AddKeyboardShortcut(Window_0, #PB_Shortcut_F5, 17)

SetWindowColor(Window_0, $000033)
 CreateMenu(1, WindowID(0))
    MenuTitle("File")
      MenuItem(1, "Open...")
      MenuItem(2, "Save")
      MenuBar()
      MenuItem(3,"Quit")
      MenuTitle("Edit")
      MenuItem(5,"Copy All")
      MenuItem(6,"Paste")
      MenuItem(7,"Date")
      MenuItem(14,"Replace/find")
      MenuItem(9,"Clear all")
      MenuTitle("Format")
      MenuItem(12,"Font...")
      ; MenuItem(15,"Word Wrap")
      MenuTitle("Run")
      MenuItem(17,"Run on Browser"+ Chr(9) + "F5")
      MenuTitle("Developer")
      ;..............................................html element...................................
      
      MenuItem(20,"Insert Html Code")
      MenuItem(21,"Input")
      MenuItem(22,"TextArea")
      MenuItem(23,"Button")
      MenuItem(24,"Radio")
      MenuItem(25,"Select")
      MenuItem(26,"CheakBox")
      MenuItem(27,"WEB Template1")
      MenuBar()
      
      ;.............................................................................................
      MenuItem(13,"Prompt"+ Chr(9) + "Ctrl + D")
      
      MenuItem(19,"Get More code Html,CSS,JavaScript example on online")
      MenuTitle("Settings")
      MenuItem(10,dal$+ Chr(9) +"Dailouge will on")
      MenuItem(11,dal$+ Chr(9) +"Dailouge will off")
      MenuItem(18,"Text Color")
     MenuTitle("Help")
     MenuItem(8,"About")
     MenuItem(16,"FeedBack")
     MenuBar()
      MenuItem(4,"Info")
      CreateStatusBar(25, WindowID(Window_0))
  AddStatusBarField(100)
  StatusBarText(25, 0, "Welcome!")

 
  
  
  
  
  
  
  
  
  UsePNGImageDecoder()
  
  LoadImage(0,"ToolBar\Open.png")
  LoadImage(1,"ToolBar\save.png")
  LoadImage(2,"ToolBar\paste.png")
  LoadImage(3,"ToolBar\copy.png")
  LoadImage(4,"ToolBar\compile.png")
CreateToolBar(0, WindowID(0))


ToolBarImageButton(1,ImageID(0))
ToolBarToolTip(0,1,"Open")
ToolBarImageButton(2,ImageID(1))
ToolBarToolTip(0,2,"Save")
ToolBarSeparator()
ToolBarImageButton(5,ImageID(3))
ToolBarToolTip(0,5,"Copy All")
ToolBarImageButton(6,ImageID(2))
ToolBarToolTip(0,6,"Paste")
ToolBarSeparator()
ToolBarImageButton(17,ImageID(4))
ToolBarToolTip(0,17,"Run")
      

;input
;s = TextGadget(12, 600, 100, 500, 25, "")
;b= ButtonGadget(13,500,500,100,50,"Save") 
  ;LoadFont(20,"Comic Sans MS",15)
    

EditorGadget(14,10, 40, 880, 617,#PB_Editor_WordWrap)
SetGadgetColor(14,#PB_Gadget_BackColor,$000000)
  SetGadgetColor(14,#PB_Gadget_FrontColor,$0000FF)
  LoadFont(20,"Comic Sans MS",15)
  FontID(20)
  SetGadgetFont(14,FontID(20))
  lin$=GetGadgetText(14)
  html$="<html>" + Chr(10)  +
        "<head>" + Chr(10)  +
        "<title>This is title" +
        "</title>" + Chr(10)  +
        "</head>" + Chr(10)  +
        "<body>"+Chr(10)  +"This is body" + Chr(10)  +
        "</body>" + Chr(10)  +
        "</html>"
  input$="<input type='text'></input>"
  textarea$="<textarea type='text'></textarea>"
  button$="<input type='button'></input>"
  radio$="<input type='radio'></input>"
  Selectm$="<select name='cars'>"+ Chr(10)  +
  "<option value='volvo'>Volvo</option>"+ Chr(10)  +
  "<option value='saab'>Saab</option>"+ Chr(10)  +
  "<option value='fiat'>Fiat</option>"+ Chr(10)  +
  "<option value='audi'>Audi</option>"+ Chr(10)  +
  "</Select>"
      
  cheakbox$="<input type='cheakbox'></input>"
  
  ;.................................................................web template.............................
  web1$="<html style='background-attachment: fixed;Background-image: url(image/back.jpg)'><head> " + Chr(10)  +
"<meta name='viewport' content='width=device-width, initial-scale=1'>"+ Chr(10)  +


"<style>"+ Chr(10)  +
"* {box-sizing: border-box;}"+ Chr(10)  +
"body {font-family: Verdana, sans-serif;}"+ Chr(10)  +
".mySlides {display: none;}"+ Chr(10)  +
"img {vertical-align: middle;}"+ Chr(10)  +

"/* Slideshow container */"+ Chr(10)  +
".slideshow-container {"+ Chr(10)  +
"  max-width: 1000px;"+ Chr(10)  +
"  position: relative; "+ Chr(10)  +
"  margin: auto; "+ Chr(10)  +
"} "+ Chr(10)  +

"/* Caption text */ "+ Chr(10)  +

".text { "+ Chr(10)  +
"  color: #f2f2f2;  "+ Chr(10)  +
"  font-size: 15px; "+ Chr(10)  +
"  padding: 8px 12px;  "+ Chr(10)  +
"  position: absolute; "+ Chr(10)  +
"  bottom: 8px; "+ Chr(10)  +
"  width: 100%; "+ Chr(10)  +
"  text-align: center; "+ Chr(10)  +
"} "+ Chr(10)  +

"/* Number text (1/3 etc) */ "+ Chr(10)  +
".numbertext { "+ Chr(10)  +
 " color: #f2f2f2; "+ Chr(10)  +
 " font-size: 12px; "+ Chr(10)  +
 " padding: 8px 12px; "+ Chr(10)  +
"  position: absolute; "+ Chr(10)  +
"  top: 0; "+ Chr(10)  +
"}"+ Chr(10)  +

"/* The dots/bullets/indicators */ "+ Chr(10)  +
".dot { "+ Chr(10)  +
 " height: 15px; "+ Chr(10)  +
  "width: 15px; "+ Chr(10)  +
 " margin: 0 2px; "+ Chr(10)  +
 " background-color: #bbb; "+ Chr(10)  +
 " border-radius: 50%; "+ Chr(10)  +
 " display: inline-block; "+ Chr(10)  +
 " transition: background-color 0.6s ease; "+ Chr(10)  +
"} "+ Chr(10)  +

".active { "+ Chr(10)  +
 " background-color: #717171; "+ Chr(10)  +
"} "+ Chr(10)  +

"/* Fading animation */ "+ Chr(10)  +
".fade { "+ Chr(10)  +
  "-webkit-animation-name: fade; "+ Chr(10)  +
"  -webkit-animation-duration: 1.5s; "+ Chr(10)  +
 " animation-name: fade; "+ Chr(10)  +
 " animation-duration: 1.5s; "+ Chr(10)  +
"} "+ Chr(10)  +

"@-webkit-keyframes fade { "+ Chr(10)  +
  "from {opacity: .4}  "+ Chr(10)  +
  "to {opacity: 1} "+ Chr(10)  +
"} "+ Chr(10)  +

"@keyframes fade { "+ Chr(10)  +
  "from {opacity: .4}  "+ Chr(10)  +
 " to {opacity: 1} "+ Chr(10)  +
"} "+ Chr(10)  +

"/* On smaller screens, decrease text size */ "+ Chr(10)  +
"@media only screen and (max-width: 300px) { "+ Chr(10)  +
 " .text {font-size: 11px} "+ Chr(10)  +
"} "+ Chr(10)  +
"</style> "+ Chr(10)  +
"</head> "+ Chr(10)  +
"<body> "+ Chr(10)  +



"<div class='slideshow-container'> "+ Chr(10)  +

"<div class='mySlides fade'> "+ Chr(10)  +
  "<div class='numbertext'>1 / 3</div> "+ Chr(10)  +
  "<img src='image/1s.jpg' style='width:100%'> "+ Chr(10)  +
  "<div class='text'>sojeb sikder1</div> "+ Chr(10)  +
"</div> "+ Chr(10)  +

"<div class='mySlides fade'> "+ Chr(10)  +
"  <div class='numbertext'>2 / 3</div> "+ Chr(10)  +
"  <img src='image/2s.jpg' style='width:100%'> "+ Chr(10)  +
"  <div class='text'>Sojeb sikder2</div> "+ Chr(10)  +
"</div> "+ Chr(10)  +

"<div class='mySlides fade'> "+ Chr(10)  +
  "<div class='numbertext'>3 / 3</div> "+ Chr(10)  +
 " <img src='image/3s.jpg' style='width:100%'> "+ Chr(10)  +
 " <div class='text'>sojeb sikder3</div> "+ Chr(10)  +
"</div> "+ Chr(10)  +

"</div> "+ Chr(10)  +
"<br> "+ Chr(10)  +

"<div style='text-align:center'> "+ Chr(10)  +
 " <span class='dot'></span>  "+ Chr(10)  +
 " <span class='dot'></span>  "+ Chr(10)  +
 " <span class='dot'></span>  "+ Chr(10)  +
"</div> "+ Chr(10)  +

"<script> "+ Chr(10)  +
"var slideIndex = 0; "+ Chr(10)  +
"showSlides(); "+ Chr(10)  +

"function showSlides() { "+ Chr(10)  +
  "  var i; "+ Chr(10)  +
  "  var slides = document.getElementsByClassName('mySlides'); "+ Chr(10)  +
  "  var dots = document.getElementsByClassName('dot'); "+ Chr(10)  +
  "  for (i = 0; i < slides.length; i++) { "+ Chr(10)  +
  "     slides[i].style.display = 'none';   "+ Chr(10)  +
  "  } "+ Chr(10)  +
 "   slideIndex++; "+ Chr(10)  +
  "  if (slideIndex > slides.length) {slideIndex = 1}     "+ Chr(10)  +
  "  for (i = 0; i < dots.length; i++) { "+ Chr(10)  +
   "     dots[i].className = dots[i].className.replace(' active', ''); "+ Chr(10)  +
  "  }"+ Chr(10)  +
  "  slides[slideIndex-1].style.display = 'block';   "+ Chr(10)  +
  "  dots[slideIndex-1].className += ' active'; "+ Chr(10)  +
 "   setTimeout(showSlides, 2000); // Change image every 2 seconds "+ Chr(10)  +
"} "+ Chr(10)  +
"</script> "+ Chr(10)  +





"<style> "+ Chr(10)  +
"body {margin:0;} "+ Chr(10)  +

".navbar { "+ Chr(10)  +
 " overflow: hidden; "+ Chr(10)  +
 " background-color: #333; "+ Chr(10)  +
  "position: fixed; "+ Chr(10)  +
  "top: 0; "+ Chr(10)  +
  "width: 100%; "+ Chr(10)  +
"} "+ Chr(10)  +

".navbar a { "+ Chr(10)  +
  "float: left; "+ Chr(10)  +
  "display: block; "+ Chr(10)  +
"  color: #f2f2f2; "+ Chr(10)  +
  "text-align: center; "+ Chr(10)  +
  "padding: 14px 16px; "+ Chr(10)  +
  "text-decoration: none; "+ Chr(10)  +
  "font-size: 17px; "+ Chr(10)  +
"} "+ Chr(10)  +

".navbar a:hover { "+ Chr(10)  +
  "background: #ddd; "+ Chr(10)  +
  "color: black; "+ Chr(10)  +
"} "+ Chr(10)  +

".main { "+ Chr(10)  +
  "padding: 16px; "+ Chr(10)  +
  "margin-top: 30px; "+ Chr(10)  +
  "height: 1500px; /* Used in this example to enable scrolling */ "+ Chr(10)  +
"} "+ Chr(10)  +
"</style> "+ Chr(10)  +
"</head> "+ Chr(10)  +
"<body> "+ Chr(10)  +

"<div class='navbar'> "+ Chr(10)  +
 " <a href='#home'>Home</a> "+ Chr(10)  +
 " <a href='#news'>News</a> "+ Chr(10)  +
 " <a href='#contact'>Contact</a> "+ Chr(10)  +
"</div> "+ Chr(10)  +
"<div class='main'> "+ Chr(10)  +

"</div> "+ Chr(10)  +
"</body> "+ Chr(10)  +
"</html> "
  
  
  
  
ResizeWebWindow()

Repeat
  
  
  
  
   event = WaitWindowEvent()
   Select event
       
       
     
       
      ; Case #PB_Event_Gadget
      Case #PB_Event_RightClick       ; right mouse button was clicked =>
         DisplayPopupMenu(0, WindowID(0))  ; now display the popup-menu

        
       Case #PB_Event_SizeWindow
               ResizeWebWindow()
              Case #PB_Event_Menu ; We only have one shortcut
                
                Select EventMenu()
                    
                    
                  Case 20
                    SetGadgetText(14,GetGadgetText(14)+html$)
                  Case 21
                    SetGadgetText(14,input$+GetGadgetText(14))
                  Case 22
                    SetGadgetText(14,textarea$+GetGadgetText(14))
                  Case 23
                    SetGadgetText(14,button$+GetGadgetText(14))
                  Case 24
                    SetGadgetText(14,radio$+GetGadgetText(14))
                  Case 25
                    SetGadgetText(14,Selectm$+GetGadgetText(14))
                  Case 26
                    SetGadgetText(14,cheakbox$+GetGadgetText(14))
                  Case 27
                    SetGadgetText(14,web1$+GetGadgetText(14))
                  Case 19
                    b= MessageRequester("SpadWeb","Click yes to get code from website and NO to get from Developer",#PB_MessageRequester_YesNo)
                    If b=#PB_MessageRequester_No
                      feedback()
                    EndIf
                    If b=#PB_MessageRequester_Yes
                      RunProgram("http://www.sojebsoft.ml")
                      EndIf
                    
                  Case 18
                    
                     SetGadgetColor(14,#PB_Gadget_FrontColor,ColorRequester())
                    
               
             Case 16
              feedback()
               
             Case 14
              sel$= InputRequester("Select","write text tha you want to select","")
               rep$=InputRequester("Replace","Write s text tha you want to replace","")
               ReplaceString(GetGadgetText(14),sel$,rep$)
               SetGadgetText(14,ReplaceString(GetGadgetText(14),sel$,rep$))
             Case 13 ; ......................developer cheat code.....................................................................
               
              
      
               
               code$= InputRequester("Developer Code","Enter a Code","")
               
     
               
              ;........................1...sojebsoft website...................
              If code$="sojebsoft web"
RunProgram("www.sojebsoft.ml")
EndIf
;.........................2....run programn..................

If code$="run program"
   run$=InputRequester("Developer Code","Enter system file name to open (such as: 'calc')","")
   RunProgram(run$)
 EndIf 
;.........3...developer facebook page................
If code$="01833962595"
   RunProgram("www.facebook.com/sojeb.sikder")
 EndIf 


;..........................4....sojebsoft developer website...................
If code$="developer web"
RunProgram("www.developersojebsoft.ml")
EndIf
;............
If code$="hello spad"
MessageRequester("Spad","Hello Welcome to Spad. Did you know this software made by SojebSoft Inc.")
EndIf
;..............................5.....color........................
 If code$="window color"
   cl=ColorRequester()
   SetWindowColor(Window_0, cl)
 EndIf

 ;................................6.....about developer..........................
 sojebinfo$="Hello everyone " +
              "Im Sojeb Sikder From SojebSoft Inc." +
              "This product is made by me. " +
              "Thanks for choosing Spad"
 If code$="sojeb sikder"
MessageRequester("SpadWeb",sojebinfo$)
EndIf
 
;...............................7......download manager..........................
If code$="download"
  RunProgram("sdm")
  EndIf

  ;..................................8......locker.............................
  If code$="locker"
    psk$=InputRequester("Locker","Enter your password","",#PB_InputRequester_Password)
    If psk$="sojeb123"
      MessageRequester("Locker","This is your resuilt")
    EndIf
    ;.......................................9...........change editro color.......
    
    ;....................................10.................open music player...
    If code$="music"
  RunProgram("music")
  EndIf
   
    EndIf









 
              ;developer code...........End............................................................................................
              
              ;................gadget....................control.................................
              
         
                
                
             Case 12 ;font
               FontName$ = "Comic Sans MS" 
                FontSize  = 15     
  Result = FontRequester(FontName$, FontSize, #PB_FontRequester_Effects)   
  LoadFont(20,SelectedFontName(),SelectedFontSize())
  SetGadgetFont(14,FontID(20))
  
              Case 10

                If dal$="Dailouge off"
                  dal$="Dailouge on"
                  DisableMenuItem(1,10, 1)
                  DisableMenuItem(1,11, 0)
                EndIf
              Case 11
                 If dal$="Dailouge on"
                   dal$="Dailouge off"
                   DisableMenuItem(1,11, 1)
                   DisableMenuItem(1,10, 0)
                   EndIf
                Case 9
                  SetGadgetText(14,"")
                 If dal$="Dailouge on"
               MessageRequester("Spad","All text clear !")
             EndIf
             Case 8
               MessageRequester("Help","File: by use file menu you can save and open file. and quit notepad."+ Chr(10)  +" Edit: This tab include copy And paste."+ Chr(10)  +"If you want To use date so please use date before writing."+ Chr(10)  +" about: help And ownership ")
             Case 7
             SetGadgetText(14,GetGadgetText(14)+" "+ FormatDate("%mm/%dd/%yyyy", AddDate(Date(), #PB_Date_Year, 2)))
             Case 5;copy all
               SetClipboardText(GetGadgetText(14))
AddKeyboardShortcut(0, #PB_Shortcut_Control | #PB_Shortcut_C,5)
             Case 6;paste
               SetGadgetText(14,GetClipboardText())
               AddKeyboardShortcut(0, #PB_Shortcut_Control | #PB_Shortcut_V,6)
             Case 3;quit
               a =MessageRequester("Warning","Are you quit",#PB_MessageRequester_YesNo)
               If a=#PB_MessageRequester_Yes
                 End
               ElseIf a=#PB_MessageRequester_No
                 EndIf
             Case 4 ; info
               MessageRequester("Spad","A SojebSoft Inc. Software. "+ Chr(10)  +"Website: http://www.sojebsoft.ml")
             Case 1 ; Load
               Fileo$ = OpenFileRequester("Choose a file to open", "", "All files (*.*)|*.*", 0)
               ;read file
               If ReadFile(16, Fileo$) 
                 
                 SetGadgetText(14,ReadString(16,#PB_File_IgnoreEOL))
     
       
    CloseFile(16)               ; close the previously opened file
  Else
    MessageRequester("SpadWeb","Couldn't open the file!")
  EndIf
             Case 2;save
               File$ = SaveFileRequester("Please choose file to save","desktop:\index.html" ,"html files (*.html*)|*.html*", 0)
               SetWindowTitle(0,File$+"-Spad")
   ;Create file systenm
  If CreateFile(9, file$);
    WriteStringN(9,GetGadgetText(14));
    ;SetGadgetText(12,GetGadgetText(14));
 
    CloseFile(9)  
    Else
  MessageRequester("SpadWeb", "Error: can't Save the file", 0)
  
EndIf
Case 17
  If File$=""
    MessageRequester("SpadWeb","You must save file!")
    Else
      RunProgram(File$)
      EndIf
       
  
           
    
  ;...............................gadget..............control......................
   
  
  Event = WaitWindowEvent() 
  Select Event
      Case #PB_Event_Gadget
      
        Select EventGadget()
            
          Case 13
            SetGadgetText(12,GetGadgetText(14));
            


EndSelect
EndSelect
EndSelect
EndSelect

     Until Event = #PB_Event_CloseWindow
             

     End
     
     

     
  
    
; IDE Options = PureBasic 5.40 LTS (Windows - x86)
; CursorPosition = 345
; FirstLine = 308
; Folding = -
; EnableXP
; UseIcon = spadico.ico
; Executable = spadWeb.exe
; IncludeVersionInfo
; VersionField0 = 4.4.1
; VersionField1 = 4.4.1
; VersionField2 = SojebSoft Inc.
; VersionField3 = SpadWeb - a simple web coder
; VersionField4 = 4.4.1
; VersionField5 = 4.4.1
; VersionField6 = SpadWeb - A simple web coder. That can make any edit.
; VersionField7 = SpadWeb - a simple web coder
; VersionField8 = SpadWeb - a simple web coder
; VersionField9 = (c)SojebSoft Inc.
; VersionField13 = sojebsikder@gmail.com
; VersionField14 = http://www.sojebsoft.ml
; VersionField15 = VOS_DOS_WINDOWS32
; VersionField17 = 0409 English (United States)
; VersionField18 = sojebsoftware.000webhostapp.com
; VersionField21 = www.facebook.com/sojeb.sikder