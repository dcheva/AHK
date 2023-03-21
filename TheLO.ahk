;-----Let's intro-----
;ver 23.0321.1
;for AHK 1.1.34.04
;by cheva (c) MIT 2012-2023

SoundPlay %A_WinDir%\Media\Windows Message Nudge.wav

;-----Let's define-----
;reload
$^+R::Reload

;suspend/resume
$^+S::
;pause/resume
$^+P::
  ;use both to sleep/pause
  ;thanks to Rohwedder
  ;https://www.autohotkey.com/boards/viewtopic.php?t=50594
  Suspend ;Suspend Hotkeys
  Pause,,1 ;Pause Script
  If !(Reload := !Reload)
    Reload ;Reload Script
Return

;exit
$^+W::
  Send, {^+W}
  SoundPlay %A_WinDir%\Media\Windows Logoff Sound.wav
  Sleep, 1000
  ExitApp
return

;Steam {PrintScreen}
$PrintScreen::
  Send, {PrintScreen}
  Send, {F12}
return

;-----Let's play!-----

; Jump!!! Shift + action
; Left or right mouse is down when shift pressed
#IfWinActive, Last Epoch
$LShift::
  ; + Clicked
  ; Blink
  GetKeyState, Lst, LButton
  GetKeyState, Rst, RButton
  if (Lst = "D" or Rst = "D") {
    Send, {R}
  }
return

; run clicker loop
#IfWinActive, Last Epoch
$^Backspace::
  BreakLoop := 0
  Loop, 1000 {
    SoundPlay %A_WinDir%\Media\Windows Navigation Start.wav
    Send {LShift Down} 
    Sleep, 25 
    Send {RButton} 
    Sleep, 25 
    Send {LShift Up} 
    Sleep, 50
    ; hold Backspace to break loop
    if (BreakLoop == 1 or GetKeyState("Backspace", "P")) {
      BreakLoop := 0
      break
    }
  }
return
