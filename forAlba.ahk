;-=-\ Let's intro \-=-
;ver 23.1129.1
;for AHK 1.1.34.04
;by cheva (c) MIT 2012-2024

;-=-\ Functions \-=-
ran(min, max)
{
	random, ran, min, max
	return ran                                                                                                                                                      
}

;-=-\ Init \-=-
SoundPlay %A_WinDir%\Media\Windows Message Nudge.wav

;reload
$^+R::
  Reload
Return

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
Return
                                                                                                                              
;-----Let's play!-----
; Emergency exit
$^F1::Process,Close,Albion-Online.exe

;Fire https://i.imgur.com/wrZrlLu.png
$D:: ;Resister
  Send, {r Down}
  Sleep, 200
  Send, {r Up}
  Sleep, 1500
  Send, {d Down}
  Sleep, 200
  Send, {d Up}
  Sleep, 200
  Send, {f Down}
  Sleep, 200
  Send, {f Up}
Return

$W:: ;Attack Clicker
  Send, {w Down}
  Sleep, 20
  Send, {w Up}
  MouseClick, left
  Sleep, 1000
  Send, {q Down}
  Sleep, 20
  Send, {q Up}
  MouseClick, left
  Sleep, 20
  MouseClick, left
Return
