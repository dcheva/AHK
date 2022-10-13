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


Numpad0::LButton
NumpadDot::RButton
NumpadEnter::LShift

Space::
	MouseGetPos, OrigX, OrigY
	MouseMove, 1115, 960
	MouseClick, Left
	Sleep, 100
	MouseClick, Left
	MouseMove, %OrigX%, %OrigY%
return

BackSpace::
	MouseGetPos, OrigX, OrigY
	MouseMove, 835, 960
	MouseClick, Left
	Sleep, 100
	MouseClick, Left
	MouseMove, %OrigX%, %OrigY%
return

Numpad1::K
Numpad2::L
Numpad3::Z
Numpad4::O
Numpad5::P
Numpad6::6