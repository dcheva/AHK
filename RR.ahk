;by cheva (c) MIT 2012-2022
; ������� ��4: ������� v1.0.2

SoundPlay %A_WinDir%\Media\Windows Message Nudge.wav

;reload
$^+R::Reload

;suspend/resume
$^+S::Suspend, toggle

;pause/resume
$^+P::Pause, toggle

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
