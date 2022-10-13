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
