;by cheva

;reload
$^+R::Reload
;suspend/resume
$^+S::Suspend, toggle

Numpad0::LButton
NumpadDot::RButton
NumpadEnter::LShift

Space::
	MouseGetPos, OrigX, OrigY
	MouseMove, 1115, 960
	MouseClick, Left
	Sleep, 100
	MouseClick, Left
	MouseMove, %OrigX%, %OrigY%
return

BackSpace::
	MouseGetPos, OrigX, OrigY
	MouseMove, 835, 960
	MouseClick, Left
	Sleep, 100
	MouseClick, Left
	MouseMove, %OrigX%, %OrigY%
return

Numpad1::K
Numpad2::L
Numpad3::Z
Numpad4::O
Numpad5::P
Numpad6::6