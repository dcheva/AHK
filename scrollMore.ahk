; Mouse clicks
; by Cheva (c) 2017-2019

; reload
$!^R::Reload
;suspend/resume
$!^S::Suspend, toggle

; clicks
;`::LButton
;!1::MButton
;!2::RButton
;!q Up::
;	Send, {WheelUp}
;return
;!a Up::
;	Send, {WheelDown}
;return

;-) alter clicks
;Insert::LButton
;Home::MButton
;End::RButton
PgUp::
	Send, {WheelUp}
return
PgDn::
	Send, {WheelDown}
return

;-) moves
;$Left::MouseMove, -20, 0, 2, R
;$Right::MouseMove, 20, 0, 2, R
;$Up::MouseMove, 0, -20, 2, R
;$Down::MouseMove, 0, 20, 2, R
