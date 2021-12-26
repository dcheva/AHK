;-) by Cheva (c) 2017-2021

SoundPlay %A_WinDir%\Media\Windows Message Nudge.wav

;reload
 $+R::Reload
$^+R::Reload

;suspend/resume
$^+S::Suspend, toggle

;pause/resume
$^+P::Pause, toggle

$MButton::Numpad7

$+LButton::
	SoundPlay %A_WinDir%\Media\Windows Navigation Start.wav
	Send, {LButton Down}
Return

CLK:=false

$+e::
SoundPlay %A_WinDir%\Media\Windows Navigation Start.wav
CLK:=true
Loop {
	if(!CLK) 
		break
	Send, E
	Sleep, 100
}
Return
