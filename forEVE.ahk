;v.1.29
;for AHK 1.1.34.04
;by cheva (c) MIT 2012-2023


;-=-\ Init \-=-
global MouseSpeed = 20

;overview position
;fullscreen 210 windowed 240
;can br redefined by $^+1::
global ViewTop := 210
global ViewLeft := 1700
global ViewStep := 18

;locked targets position
;fullscreen 50 windowed 80
;can br redefined by $^+2::
global LockedTop := 50
global LockedLeft := 1500
global LockedStep := -110

;other globals
global BreakLoop := 0
global StopKeys := 1
global ClickX := 0
global ClickY := 0

;functions
ran(min, max)
{
	random, ran, min, max
	return ran
}

clkView(pos:=1)
{
	if(StopKeys == 0)
	{
		top := ViewTop + (ViewStep * (pos-1))
		lft := ViewLeft
		MouseGetPos, OrigX, OrigY
		MouseMove, %lft%, %top%, %MouseSpeed%
		;Send, {Ctrl Down}
		;Sleep, 100
		;MouseClick, left, , 
		;Sleep, 100
		;Send, {Ctrl Up}
		MouseClick, left, , 
		MouseMove, %OrigX%, %OrigY%, %MouseSpeed%
		SoundPlay %A_WinDir%\Media\Windows Navigation Start.wav
	}
}

clkLocked(pos:=1)
{
	if(StopKeys == 0)
	{
		top := LockedTop
		lft := LockedLeft + (LockedStep * (pos-1))
		MouseGetPos, OrigX, OrigY
		MouseMove, %lft%, %top%, %MouseSpeed%
		MouseClick, left, , 
		;Sleep, 100
		;MouseClick, left, , 
		MouseMove, %OrigX%, %OrigY%, %MouseSpeed%
		SoundPlay %A_WinDir%\Media\Windows Navigation Start.wav
	}
}

;-=-/ Init /-=-




SoundPlay %A_WinDir%\Media\Windows Message Nudge.wav

;reload
$^+R::
  Reload
Return

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
Return
;-----Let's play!-----


;enable mouse clicker (random time 1-10 sec, current mouse position)
$^+C::
	Send, {^+C}
	MouseGetPos, ClickX, ClickY
	SoundPlay %A_WinDir%\Media\Windows Pop-up Blocked.wav
	Loop
	{
		if (BreakLoop == 1)
		{
			BreakLoop = 0
			break
		}
		MouseGetPos, OrigX, OrigY
		MouseClick, left, %ClickX%, %ClickY%
		MouseMove, %OrigX%, %OrigY%
		Sleep, % ran(3000, 9000)
		SoundPlay %A_WinDir%\Media\Windows Navigation Start.wav
	}
return

;enable key clicker 
$^+a::
	StopKeys = 0
	SoundPlay %A_WinDir%\Media\Windows Pop-up Blocked.wav
return

;set overView positions
;keys: ([1-8] and control+[1-8])
$^!1::
	;Set coords
	;Mouse must be at 1st line of overview
	MouseGetPos, ThisX, ThisY
	global ViewTop := %ThisX%
	global ViewLeft := %ThisY%
	;show positions
	MouseMove, %LockedTop%, %LockedLeft%, %MouseSpeed%
	SoundPlay %A_WinDir%\Media\Windows Pop-up Blocked.wav
	MouseMove, %ViewTop%, %ViewLeft%, %MouseSpeed%
	SoundPlay %A_WinDir%\Media\Windows Pop-up Blocked.wav
return

;set new targetsLocked positions
;keys: ([1-8] and control+[1-8])
$^!2::
	;Set coords
	;Mouse must be at 1st locked icon
	MouseGetPos, ThisX, ThisY
	global LockedTop := %ThisX%
	global LockedLeft := %ThisY%
	;show positions
	MouseMove, %ViewTop%, %ViewLeft%, %MouseSpeed%
	SoundPlay %A_WinDir%\Media\Windows Pop-up Blocked.wav
	MouseMove, %LockedTop%, %LockedLeft%, %MouseSpeed%
	SoundPlay %A_WinDir%\Media\Windows Pop-up Blocked.wav
return

;[1-8] click locked
$1::
	Send, {1}
	clkLocked(1)
return

$2::
	Send, {2}
	clkLocked(2)
return

$3::
	Send, {3}
	clkLocked(3)
return

$4::
	Send, {4}
	clkLocked(4)
return

$5::
	Send, {5}
	clkLocked(5)
return

$6::
	Send, {6}
	clkLocked(6)
return

$7::
	Send, {7}
	clkLocked(7)
return

$8::
	Send, {8}
	clkLocked(8)
return

;control+[1-8] control+click overview
$^1::
	Send, {^1}
	clkView(1)
return

$^2::
	Send, {^2}
	clkView(2)
return

$^3::
	Send, {^3}
	clkView(3)
return

$^4::
	Send, {^4}
	clkView(4)
return

$^5::
	Send, {^5}
	clkView(5)
return

$^6::
	Send, {^6}
	clkView(6)
return

$^7::
	Send, {^7}
	clkView(7)
return

$^8::
	Send, {^8}
	clkView(8)
return

