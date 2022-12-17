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
SendMy(Var, Time) {
  Sleep, %Time%
  Send {%Var%} 
}

;click to kill while smoking
clkToKill()
{
  Send, {Q}
  SendMy, ("W",100)
  SendMy, ("E",100)
  SendMy, ("LButton",100)
  SendMy, ("MButton",100)
  SendMy, ("RButton",100)
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
;$4::
;$5::
  Send, 1
  SendMy("2", 10)
  SendMy("3", 10)
  SendMy("4", 10)
  SendMy("5", 10)
return

$^A::
  Send, {T}
  SendMy("^T", 10) 
  SendMy("^R", 10) 
  SendMy("^E", 10) 
  SendMy("^W", 10) 
  SendMy("^Q", 10) 
  SendMy("MButton", 100)
return

; achtung minen!
$R::
  Send, {R}
  SendMy("D", 250)
return

;D for mine detonation
;MB for mine
;T for banner
$Space::
  Send, {Space}
  SendMy("T", 10)
  SendMy("MButton", 100)
  SendMy("D", 250)
return

;go hideout on F5
$F5::
  Send, {Enter}
  SendMy("/hideout",10)
  SendMy("Enter",10)
return

;Shift + Click
$LShift::
GetKeyState, state, LButton
if (state = "D") {
  Send, {R}
  SendMy("D", 250)
}
return
