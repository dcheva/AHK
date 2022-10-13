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


;functions
ran(min, max)
{
	random, ran, min, max
	return ran
}

;enable mouse clicker (random time 1-10 sec, current mouse position)
$^+C::
	BreakLoop := 0
	;SoundPlay %A_WinDir%\Media\Windows Pop-up Blocked.wav
	Loop
	{
		if (BreakLoop == 1)
		{
			BreakLoop = 0
			break
		}
		Send, {.}
		Sleep, 20
		Send, {Enter}
		Sleep, 20
		Send, {.}
		Sleep, 20
		Send, {Enter}
		SoundPlay %A_WinDir%\Media\Windows Navigation Start.wav
		Sleep, % ran(60*1000, 120*1000)
	}
return

; break clicker loop
$Space::
	BreakLoop := 1
	Send, {Space}
return

;go hideout on F5
$F5::
  Send, {Enter}
  Send, /hideout
  Send, {Enter}
return
