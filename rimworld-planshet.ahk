;for AHK 1.1.34.04
;by cheva (c) MIT 2012-2022

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

SC010::q
SC011::w
SC012::e
SC013::r
SC014::t
SC015::y
SC016::u
SC017::i
SC018::o
SC019::p
SC01A::[
SC01B::]
SC02B::\

SC01E::a
SC01F::s
SC020::d
SC021::f
SC022::g
SC023::h
SC024::j
SC025::k
SC026::l
SC027::;
SC028::'
