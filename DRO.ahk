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

CLK:=false

$RControl:: 
Send, {RControl Down}
CLK:=true
Loop, 
{
  if(!CLK)
    break
  Click
  Sleep, 250
}
return

$Space::
  Send, {RControl Up}
  Send, {Space}
  Reload
return

$^Space::
  Send, {RControl Up}
  Send, {Space}
  Reload
return



$MButton::
    CLK:=false
return 

$^MButton::
    CLK:=false
return 
