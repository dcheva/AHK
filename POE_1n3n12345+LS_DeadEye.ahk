;for AHK 1.1.34.04
;by cheva (c) MIT 2012-2023

SoundPlay %A_WinDir%\Media\Windows Message Nudge.wav

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
;-----Let's play!-----

;; Emergency exit
$^F1::
  Send, {^F1}
  Process,Close,PathOfExileSteam.exe
  SoundPlay %A_WinDir%\Media\Windows Logoff Sound.wav
  Sleep, 1000
  ExitApp

; Functions
clkToKill()
{
  Send, {W}
  Sleep, 1000
  Send, {RButton}
  Sleep, 200
  Send, {Q}
  Sleep, 200
  Send, {Q}
  Sleep, 200
  Send, {Q}
  Sleep, 200
  Send, {Q}
  Sleep, 200
  Send, {Q}
  Sleep, 200
  SoundPlay %A_WinDir%\Media\Windows Navigation Start.wav
}

; Go smoke
$^Numpad0::
	Loop
	{
		clkToKill()
		Sleep, 2000
	}
return

; Flasks
;$1:: 
$2::
;$3::
;$4::
;$5::
  Send, 1
  Send, 2
  Send, 3
  Send, 4
  Send, 5
return

; Auras
$^A::
  Send, {T}
  Sleep, 100
  Send, ^T
  Sleep, 100
  Send, ^R
  Sleep, 100
  Send, ^E
  Sleep, 100
  Send, ^W
  Sleep, 100
  Send, ^Q
  Sleep, 100
  Send, {MButton}
  Reload ; to refresh variables
return

; Speed up!
$Capslock::5

; Jump! Than T
$Space::
  BreakLoop := 1
  Send, {Space}
  Send, {MButton}
  Sleep, 100
  Send, {T}
return

; Jump!!! Shift + action
; Left or right mouse is down when shift pressed
$LShift::
  ; + Clicked
  ; Blink
  GetKeyState, Lst, LButton
  GetKeyState, Rst, RButton
  if (Lst = "D" or Rst = "D") {
    Send, {R}
;    Sleep, 75
;    Send, {5}
  }
return

$A::
  ; A::chtung Minen!!!
  ; Drop mine or trap, wait, detonate
    Send, {T}
    SoundPlay %A_WinDir%\Media\Windows Pop-up Blocked.wav
    Sleep, 200
    Send, {D}
return

; Go hideout on F5
$F5::
  Send, {Enter}
  Send, /hideout
  Send, {Enter}
return

;; Reactivate auras
;$W::
;  if(disW){
;    disW := 0
;    Send, ^{W}
;    Sleep, 100
;    Send, {W}
;  } else {
;    disW := 1
;    Send, {W}
;    Sleep, 100
;    Send, ^{W}
;  }
;return

; W and ^W
$W::
  Send, {W}
;  Sleep, 75 
  Send, ^{W}
return

; run clicker loop
#IfWinActive, Path of Exile 
$^Backspace::
  BreakLoop := 0
  Loop, 1000 { 
    Send ^{Click} 
    Sleep, 50 
    ; hold Backspace to break loop
    if (BreakLoop == 1 or GetKeyState("Backspace", "P")) {
      BreakLoop := 0
      break
    }
  }
return

;; run shift-clicker loop
;#IfWinActive, Path of Exile 
;$+Backspace::
;  BreakLoop := 0
;  Loop, 1000 { 
;    Send +{Click} 
;    Sleep, 50 
;    ; hold Backspace to break loop
;    if (BreakLoop == 1 or GetKeyState("Backspace", "P")) {
;      BreakLoop := 0
;      break
;    }
;  }
;  Send {LShift Up} 
;return

; run control+shift clicker loop
#IfWinActive, Path of Exile 
$+^Backspace::
  BreakLoop := 0
  Loop, 1000 { 
    Send +^{Click} 
    Sleep, 50 
    ; hold Backspace to break loop
    if (BreakLoop == 1 or GetKeyState("Backspace", "P")) {
      BreakLoop := 0
      break
    }
  }
return

;Reset XP counter
$^/::
  Send, {Enter}
  Send, /reset_xp
  Send, {Enter}
return
