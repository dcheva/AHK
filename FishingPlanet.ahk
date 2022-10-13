;for AHK 1.1.34.04
;by cheva (c) MIT 2012-2022

SoundPlay %A_WinDir%\Media\Windows Message Nudge.wav

;reload
$^+R::Reload

;suspend/resume
$^+S::
  Send, {^+S}
  SoundPlay %A_WinDir%\Media\Windows Battery Low.wav
  Suspend, toggle
return

;pause/resume
$^+P::
  Send, {^+P}
  SoundPlay %A_WinDir%\Media\Windows Balloon.wav
  Pause, toggle
return

;exit
$^+W::
  Send, {^+W}
  SoundPlay %A_WinDir%\Media\Windows Logoff Sound.wav
  Sleep, 1000
  ExitApp
return


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