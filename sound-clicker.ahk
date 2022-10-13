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

Send, #s
Sleep, 1000
Send, Bluetooth
Sleep, 1000
Send, {Enter}
Sleep, 1000
Loop, 
{
    SoundPlay %A_WinDir%\Media\Windows Navigation Start.wav
    Sleep, 60000
}

;reload
$^+R::Reload

;suspend/resume
$^+S::Suspend, toggle

;pause/resume
$^+P::Pause, toggle
