;-) by Cheva (c) 2017-2021
;reload
^+$r::Reload
;suspend/resume
^+$s::Suspend, toggle

$MButton::Numpad7

+$LButton::
	Send, {LButton Down}
Return

CLK:=false

+$e::
CLK:=true
Loop {
	if(!CLK) 
		break
	Send, E
	Sleep, 100
}
Return

$e::
	CLK:=false
	Send, E
Return
