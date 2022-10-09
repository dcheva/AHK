;AHK v1.1.33.11
;by cheva (c) MIT 2012-2022

SoundPlay %A_WinDir%\Media\Windows Message Nudge.wav

;reload
$^+R::Reload

;suspend/resume
$^+S::
  Suspend, toggle
  SoundPlay %A_WinDir%\Media\Windows Battery Low.wav
return

;pause/resume
$^+P::
  Pause, toggle
  SoundPlay %A_WinDir%\Media\Windows Balloon.wav
return

;exit
$^+W::ExitApp

;functions
clkToKill()
{
	Send, {Q}
	Sleep, 100
	Send, {F}
	Sleep, 100
	Send, {E}
	Sleep, 100
	Send, {LButton}
	Sleep, 100
	Send, {MButton}
	Sleep, 100
	Send, {RButton}
	SoundPlay %A_WinDir%\Media\Windows Navigation Start.wav
}

$^Numpad0::
	Loop
	{
		clkToKill()
		Sleep, 5000
	}
return

;$`::
;$1:: 
$2::
;$3::
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
  Sleep, 10  
  Send, 5
;  Sleep, 10  
;  Send, f
return

$^A::
;  Send, {T}
;  Sleep, 10 
  Send, ^T
  Sleep, 10 
  Send, ^R
  Sleep, 10 
  Send, ^E
  Sleep, 10
  Send, ^W
  Sleep, 10 
  Send, ^Q
  Sleep, 100  
  Send, {MButton}
return

; achtung minen!
$R::
  Send, {R}
  Sleep, 200 
  Send, {D}
return

$Space::
  Send, {Space}
  Sleep, 10 
  Send, {MButton}
return

