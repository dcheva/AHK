;for AHK 1.1.34.04
;by cheva (c) MIT 2012-2024
;for CoachPoPoe only

SoundPlay %A_WinDir%\Media\Windows Message Nudge.wav

;reload
$^+R::Reload

;suspend/resume
;pause/resume
$^+S::
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
;-----Let's play!-----

; Jump to Hideout on F5
$F5::
  Send, {Enter}
  Send, /hideout
  Sleep, 20 
  Send, {Enter}
return

; Reset XP counter
$^/::
  Send, {Enter}
  Send, /reset_xp
  Sleep, 20 
  Send, {Enter}
return

; List passives in chat window
$^p::
  Send, {Enter}
  Send, /passives
  Sleep, 20 
  Send, {Enter}

; Spacebar mapping
$Space::
    ; Close windows / press Spacebar
    Send, {Space}
    ; Use 3rd skill
    Send, {MButton} 
return

; Jump!!! Shift + action
; Left or right mouse is down when shift pressed
$LShift::
  ; + Clicked
  ; Blink: "R" + "5" flask
  GetKeyState, Lst, LButton
  GetKeyState, Rst, RButton
  if (Lst = "D" or Rst = "D") {
    Send, {R}
    Sleep, 20
    Send, {5}
  }
return

; Flasks macro
;$1:: 
$2::
;$3::
;$4::
;$5::
  Send, 1
  Send, 2
  Send, 3
;  Send, 4
;  Send, 5
return
