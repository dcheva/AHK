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

$^Numpad0::
	Loop
	{
		; ������
		Send, {NumpadEnter Down}
		Send, {Numpad0 Down}
		Sleep, 3000
		Send, {Numpad0 Up}
		Send, {NumpadEnter Up}

		; �����
		Sleep, 3000

		; ���������
		Send, {Numpad0 Down}
		Sleep, 7000
		Send, {Numpad0 Up}

		; �����
		Sleep, 3000

		; ������                                 
		Send, {Numpad0 Down}
		Send, {NumpadEnter Down}
		Sleep, 5000
		Send, {NumpadEnter Up}
		Send, {Numpad0 Up}

		; �����
		Sleep, 3000

		; ������ + ������ (��� �������� � ��������)
		Send, {NumpadDot Down}
		Send, {Numpad0 Down}
		Sleep, 3000
		Send, {Space}
		Sleep, 1500
		Send, {Space}
		Sleep, 500
		Send, {Numpad0 Up}
		Send, {NumpadDot Up}

		; ������                                 
		Send, {NumpadEnter Down}
		Send, {Numpad0 Down}
		Sleep, 3000
		Send, {Numpad0 Up}
		Send, {NumpadEnter Up}

		; �����
		Sleep, 3000

		; ���������
		Send, {Numpad0 Down}
		Sleep, 7000
		Send, {Numpad0 Up}

		; �����
		Sleep, 3000

}
return

$Space::
	Send, {Space}
	Send, {Numpad0 Up}
return
