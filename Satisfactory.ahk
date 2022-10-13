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
		Send, e
		Sleep, 100
		if(CLK == 0) 
			break
	}
}

;produce v<0.6.0
;$+LButton::
;	SoundPlay %A_WinDir%\Media\Windows Navigation Start.wav
;	Send, {LButton Down}
;Return

;collect v<0.6.0
;$+e::
;	CLK:=1
;	collect()
;Return
$^e::
	Send, {E Down}
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