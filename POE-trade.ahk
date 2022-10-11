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
		Sleep, 100
		Send, {Backspace}
		SoundPlay %A_WinDir%\Media\Windows Navigation Start.wav
		Sleep, % ran(30*1000, 60*1000)
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
