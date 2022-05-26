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

CLK:=false

;functions
collect(msec,reps)
{
	Loop, reps
	{
		if(!CLK) 
			break
		Send, E
		Sleep, msec
	}
}

$MButton::Numpad7

$+LButton::
	SoundPlay %A_WinDir%\Media\Windows Navigation Start.wav
	Send, {LButton Down}
Return

$+e::
	SoundPlay %A_WinDir%\Media\Windows Navigation Start.wav
	CLK:=true
	collect(100,100)
Return

$+e::
	SoundPlay %A_WinDir%\Media\Windows Logoff Sound.wav
	CLK:=false
Return