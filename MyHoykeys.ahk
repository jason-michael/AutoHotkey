;###########################################################################
;
; File ........... MyHotkeys.ahk
;
; Author ......... Jason Michael   
; Email .......... jason@redsundigitalkc.com
; Date ........... 6.4.2021
;
; Description .... Collection of misc hotkeys using a 
;                  5-button mouse (XButton1 & XButton2).
;
; Contents:
; SingleInstance
; 1. Script Commands
;   1.1 Reload
;   1.2 Exit
; 2. Media Controls (XButton2)
;   2.1 Play/Pause
;   2.2 Previous
;   2.3 Next
;   2.4 Volume Up
;   2.5 Volume Down
; 3. Navigation (XButton1 + Mouse)
;   3.1 Back
;   3.2 Forward
; 4. System (XButton1 + Keyboard)
;   4.1 Log Off
;   4.2 Restart
;   4.3 Shutdown
; Functions
;   reboot
;   poweroff
; 
;###########################################################################


#SingleInstance Force ; Make sure there's only ever one instance of this script running.

; ==================
; 1. Script Commands
; ==================

; Reload
XButton1 & F5::
reload
return

; Exit
XButton1 & F4::
MsgBox, 260, , Stop script MyHotkeys.ahk?
ifMsgBox, Yes
  exit
return


; ============================
; 2. Media Controls (XButton2)
; ============================

; Play/Pause
XButton2::
Send {Media_Play_Pause}
return

; Previous
XButton2 & LButton::
Send {Media_Prev}
return

; Next
XButton2 & RButton::
Send {Media_Next}
return


; Volume Up
XButton2 & WheelUp::
Send {Volume_Up}
return

; Volume Down
XButton2 & WheelDown::
Send {Volume_Down}
return


; ================================
; 3. Navigation (XButton1 + Mouse)
; ================================

; Back
XButton1 & LButton::
Send {Browser_Back}
return

; Forward
XButton1 & RButton::
Send {Browser_Forward}
return


; ====================================
;  4. System (XButton1 + Keyboard)
; ====================================

; Log Off
XButton1 & L::
Shutdown, 0
return

; Restart
XButton1 & R::
reboot()
return

; Shutdown
XButton1 & S::
poweroff()
return


; =========
; Functions
; =========

reboot()
{
  MsgBox, 260, , Restart now? ; yes/no, no title
  ifMsgBox, Yes
    Shutdown, 2
  return
}

poweroff()
{
  MsgBox, 260, , Shutdown now? ; yes/no, no title
  ifMsgBox, Yes
    Shutdown, 1
  return
}