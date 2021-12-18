;AHK v1.1.32.00
;by cheva (c) MIT 2017-2021

Send, #s
Sleep, 1000
Send, Bluetooth
Sleep, 1000
Send, {Enter}
Sleep, 1000
Loop, 
{
    SoundPlay %A_WinDir%\Media\Windows Navigation Start.wav
    Sleep, 60000
}

;reload
$^+R::Reload

;suspend/resume
$^+S::Suspend, toggle

;pause/resume
$^+P::Pause, toggle
