;for AHK 1.1.34.04
;by cheva (c) MIT 2012-2022

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

;functions
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
	SoundPlay %A_WinDir%\Media\Windows Navigation Start.wav
}

$^Numpad0::
	Loop
	{
		clkToKill()
		Sleep, 5000
	}
return

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

$^A::
  Send, {T}
  Sleep, 10 
  Send, ^T
  Sleep, 10 
  Send, ^R
  Sleep, 10 
  Send, ^E
  Sleep, 10
  Send, ^W
  Sleep, 10 
  Send, ^Q
  Sleep, 20
  Send, {MButton}
return

; achtung minen!
$R::
  Send, {R}
  Sleep, 200 
  Send, {D}
return

;T for banner
;MB for mark or curse
$Space::
  Send, {Space}
  Sleep, 10 
  Send, {MButton}
  Sleep, 100
  Send, {T}
return

;go hideout on F5
$F5::
  Send, {Enter}
  Send, /hideout
  Send, {Enter}
return

;Shift + Click
$LShift::
GetKeyState, state, LButton
if (state = "D") {
  Send, {R}
  Sleep, 200 
  Send, {D}
}
return

