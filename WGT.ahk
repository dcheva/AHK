;AHK v1.1.33.11
;by cheva (c) MIT 2012-2022

SoundPlay %A_WinDir%\Media\Windows Message Nudge.wav

;reload
$^+R::Reload

;suspend/resume
$^+S::
  Suspend, toggle
  SoundPlay %A_WinDir%\Media\Windows Battery Low.wav
return

;pause/resume
$^+P::
  Pause, toggle
  SoundPlay %A_WinDir%\Media\Windows Balloon.wav
return

;exit
$^+W::ExitApp

;click center
SPACE:: 
	SetMouseDelay, 0
	MouseGetPos, OrigX, OrigY
	MouseMove, (A_ScreenWidth // 2), (A_ScreenHeight // 2), 0
	MouseClick, left,,, 1, 0
	SoundPlay %A_WinDir%\Media\Windows Navigation Start.wav
	MouseMove, %OrigX%, %OrigY%
return