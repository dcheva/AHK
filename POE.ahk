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
;$f::
  Send, 1
  Sleep, 10  
  Send, 2
  Sleep, 10  
  Send, 3
  Sleep, 10  
  Send, 4
;  Sleep, 10  
;  Send, 5
;  Sleep, 10  
;  Send, f
return

$^A::
  Send, ^T
  Sleep, 10  
  Send, ^R
  Sleep, 10  
  Send, ^E
  Sleep, 10  
  Send, ^W
  Sleep, 10  
  Send, ^Q
return

;$RButton::
;  Send, T
;  Send, {RButton}