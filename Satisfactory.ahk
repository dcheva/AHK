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

global CLK := 0

;functions
collect()
{
	Loop, 100
	{
		SoundPlay %A_WinDir%\Media\Windows Navigation Start.wav
		Send, E
		Sleep, 100
		if(CLK == 0) 
			break
	}
}

$+LButton::
	SoundPlay %A_WinDir%\Media\Windows Navigation Start.wav
	Send, {LButton Down}
Return

;start
$+e::
	CLK:=1
	collect()
Return

;fly start/stop
$+~::
	Send, {Enter}
	Sleep, 100
	Send, {!}
	Sleep, 100
	Send, fly
	Sleep, 100
	Send, {Enter}
Return