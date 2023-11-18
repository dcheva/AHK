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

;----- Let's play! -----
;----- Fly with https://ficsit.app/mod/UtilityMod
$+~::
	;Send, {Enter}
	;Sleep, 250
	;Send, {Enter}
	;Sleep, 250
	Send, {!}fly
	Sleep, 250
	Send, {Enter}
Return

;----- Save and load TPs for https://ficsit.app/mod/UtilityMod
$^!1::
	;Send, {Enter}
	;Sleep, 250
	Send, {!}tp save tp1
	Sleep, 250
	Send, {Enter}
Return
$!1::
	;Send, {Enter}
	;Sleep, 250
	Send, {!}tp tp1
	Sleep, 250
	Send, {Enter}
Return
$^!2::
	;Send, {Enter}
	;Sleep, 250
	Send, {!}tp save tp2
	Sleep, 250
	Send, {Enter}
Return
$!2::
	;Send, {Enter}
	;Sleep, 250
	Send, {!}tp tp2
	Sleep, 250
	Send, {Enter}
Return
$^!3::
	;Send, {Enter}
	;Sleep, 250
	Send, {!}tp save tp3
	Sleep, 250
	Send, {Enter}
Return
$!3::
	;Send, {Enter}
	;Sleep, 250
	Send, {!}tp tp3
	Sleep, 250
	Send, {Enter}
Return
$^!4::
	;Send, {Enter}
	;Sleep, 250
	Send, {!}tp save tp4
	Sleep, 250
	Send, {Enter}
Return
$!4::
	;Send, {Enter}
	;Sleep, 250
	Send, {!}tp tp4
	Sleep, 250
	Send, {Enter}
Return
$^!5::
	;Send, {Enter}
	;Sleep, 250
	Send, {!}tp save tp5
	Sleep, 250
	Send, {Enter}
Return
$!5::
	;Send, {Enter}
	;Sleep, 250
	Send, {!}tp tp5
	Sleep, 250
	Send, {Enter}
Return
$^!6::
	;Send, {Enter}
	;Sleep, 250
	Send, {!}tp save tp6
	Sleep, 250
	Send, {Enter}
Return
$!6::
	;Send, {Enter}
	;Sleep, 250
	Send, {!}tp tp6
	Sleep, 250
	Send, {Enter}
Return
$^!7::
	;Send, {Enter}
	;Sleep, 250
	Send, {!}tp save tp7
	Sleep, 250
	Send, {Enter}
Return
$!7::
	;Send, {Enter}
	;Sleep, 250
	Send, {!}tp tp7
	Sleep, 250
	Send, {Enter}
Return
$^!8::
	;Send, {Enter}
	;Sleep, 250
	Send, {!}tp save tp8
	Sleep, 250
	Send, {Enter}
Return
$!8::
	;Send, {Enter}
	;Sleep, 250
	Send, {!}tp tp8
	Sleep, 250
	Send, {Enter}
Return
$^!9::
	;Send, {Enter}
	;Sleep, 250
	Send, {!}tp save tp9
	Sleep, 250
	Send, {Enter}
Return
$!9::
	;Send, {Enter}
	;Sleep, 250
	Send, {!}tp tp9
	Sleep, 250
	Send, {Enter}
Return
$^!0::
	;Send, {Enter}
	;Sleep, 250
	Send, {!}tp save tp0
	Sleep, 250
	Send, {Enter}
Return
$!0::
	;Send, {Enter}
	;Sleep, 250
	Send, {!}tp tp0
	Sleep, 250
	Send, {Enter}
Return
