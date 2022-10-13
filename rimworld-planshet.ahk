;for AHK 1.1.34.04
;by cheva (c) MIT 2012-2022

SoundPlay %A_WinDir%\Media\Windows Message Nudge.wav

;reload
$^+R::Reload

;suspend/resume
$^+S::
  Send, {^+S}
  SoundPlay %A_WinDir%\Media\Windows Battery Low.wav
  Suspend, toggle
return

;pause/resume
$^+P::
  Send, {^+P}
  SoundPlay %A_WinDir%\Media\Windows Balloon.wav
  Pause, toggle
return

;exit
$^+W::
  Send, {^+W}
  SoundPlay %A_WinDir%\Media\Windows Logoff Sound.wav
  Sleep, 1000
  ExitApp
return


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
