;by cheva

global X:=240 ; basic margin

$!+R::Reload
;suspend/resume
$!+S::Suspend, toggle

;-) clickers
; set margin
!0::
	X:=240
	return
!9::
	X:=220
	return
!8::
	X:=200
	return
!7::
	X:=180
	return
!6::
	X:=160
	return
!5::
	X:=140
	return

; Buyer first click
!x::
	; Place cursor on second row on Buy icon
	MouseClick, Left, 0, -40, 1, 2, ,R
	MouseClick, Left, % 0-X, 40, 1, 4, ,R
	MouseMove, % X, 0, 2, R
	return
; Buyer clicks
!z::
	; WhichButton, X, Y, ClickCount, Speed, DownOrUp, Relative
	MouseClick, Left
	MouseClick, Left, % 0-X, 0, 1, 4, ,R
	MouseMove, % X, 0, 2, R
	return

!c::Send, {F5}
