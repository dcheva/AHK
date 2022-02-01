;by cheva (c) MIT 2012-2022

SoundPlay %A_WinDir%\Media\Windows Message Nudge.wav

;reload
$^+R::Reload

;suspend/resume
$^+S::Suspend, toggle

;pause/resume
$^+P::Pause, toggle

$`::
$1:: 
$2::
$3::
$4::
;$5::
  Send, 1
  Send, 2
  Send, 3
  Send, 4
  Send, 5
return

;$MButton::
;  Send, 1
;  Send, 2
;  Send, 3
;  Send, 4
;  Send, 5
;  Send, {MButton}
;  Send, T
;return

$^A::
  Send, ^T
  Send, ^R
  Send, ^E
  Send, ^W
  Send, ^Q
return

$RButton::
  Send, T
  Send, {RButton}