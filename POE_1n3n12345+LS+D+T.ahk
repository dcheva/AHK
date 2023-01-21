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

; Functions
clkToKill()
{
  Send, {Q}
  Sleep, 100
  Send, {F}
  Sleep, 100
  Send, {E}
  Sleep, 100
  Send, {LButton}
  Sleep, 100
  Send, {MButton}
  Sleep, 100
  Send, {RButton}
  Sleep, 100
  SoundPlay %A_WinDir%\Media\Windows Navigation Start.wav
}

; Go smoke
$^Numpad0::
	Loop
	{
		clkToKill()
		Sleep, 5000
	}
return

; Flasks
;$`::
;$1:: 
$2::
;$3::
$4::
;$5::
;$f::
  Send, 1
  Sleep, 10
  Send, 2
  Sleep, 10
  Send, 3
  Sleep, 10
  Send, 4
  Sleep, 10
  Send, 5
;  Sleep, 10  
;  Send, f
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

; Achtung Minen!!! T on space
$+Space::
  BreakLoop := 1
  Send, {Space}
  Sleep, 20
  Send, {T}
  Sleep, 200
  Send, {D}
return

; Achtung Minen!!! MB and T
$Space::
  BreakLoop := 1
  Send, {Space}
  Sleep, 20
  Send, {T}
  Sleep, 20
  Send, {MButton}
  Sleep, 200
  Send, {D}
return

; Go hideout on F5
$F5::
  Send, {Enter}
  Send, /hideout
  Send, {Enter}
return

; Shift + Click
$LShift::
GetKeyState, state, LButton
if (state = "D") {
  Send, {R}
}
return

; Reactivate auras
$^~W:: ; $W::
  if(disW){
    disW := 0
    Send, ^{W}
    Sleep, 100
    Send, {W}
  } else {
    disW := 1
    Send, {W}
    Sleep, 100
    Send, ^{W}
  }
return

; run clicker loop
$^Backspace::
  BreakLoop := 0
  Loop, 1000 { 
    Send ^{Click} 
    Sleep, 100 
    ; hold Backspace to break loop
    if (BreakLoop == 1 or GetKeyState("Backspace", "P")) {
      BreakLoop := 0
      break
    }
  }
return

