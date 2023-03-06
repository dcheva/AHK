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

; Run
$!W::
  ; run
  Send, {W Down}
  Send, {LShift Down}
return

; Combo and flip back
$E::
  Send, {LButton}
  Sleep, 200
  Send, {E}
  Sleep, 200
  Send, {S}
  Sleep, 200
  Send, {S}
return

; Reset
$Z::
$+Z::
$^+Z::
  BreakLoop := 1
  Send, {Z}
  Send, {RButton Up}
  Send, {LShift Up}
  Send, {W Up}
  SoundPlay %A_WinDir%\Media\Windows Navigation Start.wav
return






