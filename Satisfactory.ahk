;-) by Cheva (c) 2017-2021
;reload
$^+R::Reload
;suspend/resume
$^+S::Suspend, toggle

CLK:=false

+$LButton::
	Send, {LButton Down}
Return

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
	Send, e
Return
