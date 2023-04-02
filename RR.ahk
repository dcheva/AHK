;for AHK 1.1.34.04
;by cheva (c) MIT 2012-2023

SoundPlay %A_WinDir%\Media\Windows Message Nudge.wav

;reload
^+R::Reload

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

;Autofisher
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
	Send, ^+R
	Send, {Numpad0 Up}
return
