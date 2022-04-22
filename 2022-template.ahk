;AHK v1.1.33.11
;by cheva (c) MIT 2012-2022

SoundPlay %A_WinDir%\Media\Windows Message Nudge.wav

;reload
$^+R::Reload

;suspend/resume
$^+S::Suspend, toggle

;pause/resume
$^+P::Pause, toggle

;exit
$^+W::ExitApp

