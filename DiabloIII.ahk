;-) by Cheva (c) 2017-2021
;reload
$^+R::Reload
;suspend/resume
$^+S::Suspend, toggle

$LButton::
	Send, {LButton}
	Send, 1
Return

$`::
	Send, 2
	Send, 3
	Send, 4
Return
