;for AHK 1.1.34.04
;by cheva (c) MIT 2012-2023

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

; Run and scan
$!W::
  ; run
  Send, {W Down}
  Send, {LShift Down}
  ; and scan
  Sleep, 500
  Send, {RButton Down}
return

; Gallop and scan
$^W::
  ; gallop
  Send, {W Down}
  Send, {LShift Down}
  Send, {LShift Up}
  Send, {LShift Down}
  ; and scan
  Sleep, 500
  Send, {RButton Down}
return

; Reset
$Z::
$+Z::
$^+Z::
  BreakLoop := 1
  Send, {RButton Up}
  Send, {LShift Up}
  Send, {W Up}
  SoundPlay %A_WinDir%\Media\Windows Navigation Start.wav
return






