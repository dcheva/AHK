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

BS := false

$Backspace::
	if(BS) {
		BS := false
		Send, {Backspace Down}
	}
	else {
		BS := true
		Send, {Backspace Up}
	}
return

$!A::Send, {A Down}

$Numpad5:: Send, {Down}

;-) Click
Numpad0::LButton
NumpadDot::MButton
NumpadEnter::RButton

;-) Scroll
PgDn::WheelDown
PgUp::WheelUp
