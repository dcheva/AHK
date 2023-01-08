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
return

;exit
$^+W::
  Send, {^+W}
  SoundPlay %A_WinDir%\Media\Windows Logoff Sound.wav
  Sleep, 1000
  ExitApp
return
;-----Let's play!-----

;SoundPlay %A_WinDir%\Media\Windows Message Nudge.wav
;SoundPlay %A_WinDir%\Media\Windows Battery Low.wav
;SoundPlay %A_WinDir%\Media\Windows Balloon.wav
;SoundPlay %A_WinDir%\Media\Windows Pop-up Blocked.wav
;SoundPlay %A_WinDir%\Media\Windows Navigation Start.wav

; run clicker loop
#IfWinActive, Path of Exile 
$^P:: 
$Backspace::
  BreakLoop := 0
  Loop, 1000 { 
    ; hold Backspace to break loop
    if (BreakLoop == 1 or GetKeyState("Backspace", "P")) {
      BreakLoop := 0
      break
    }
    Send ^{Click} 
    Sleep, 100 
  }
return

; break clicker loop
#IfWinActive, Path of Exile 
$Space::
  BreakLoop := 1
  Send, {Space}
return
