;-=-\ EVE online mouse clicker \-=-
;v.1.21.31b
;for AHK 1.1.34.04
;by cheva (c) MIT 2012-2023

;-=-\ Set globals \-=-
global MouseSpeed = 1

;overview position
;can br redefined by $^!1::
;fullscreen ViewTop 210 windowed 240 (if not changed)
global ViewTop := 145
global ViewLeft := 1600
global ViewStep := 18

;locked targets position
;can br redefined by $^!2::
;fullscreen LockedTop 50 windowed 80 (if not changed)
global LockedTop := 55
global LockedLeft := 1520
global LockedStep := -110

;other globals
global BreakLoop := 0
global StopKeys := 1
global ClickX := 0
global ClickY := 0

;-=-\ Functions \-=-
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
		;@Test in game chat
		;Send, v:%top%, %lft%
		MouseGetPos, OrigX, OrigY
		MouseMove, %lft%, %top%, %MouseSpeed%
		MouseClick, left, , 
		SoundPlay %A_WinDir%\Media\Windows Navigation Start.wav
		MouseMove, %OrigX%, %OrigY%, %MouseSpeed%
	}
}

clkLocked(pos:=1)
{
	if(StopKeys == 0)
	{
		top := LockedTop
		lft := LockedLeft + (LockedStep * (pos-1))
		;@Test in game chat
		;Send, l:%top%, %lft%
		MouseGetPos, OrigX, OrigY
		MouseMove, %lft%, %top%, %MouseSpeed%
		MouseClick, left, , 
		;Sleep, 100
		;MouseClick, left, , 
		SoundPlay %A_WinDir%\Media\Windows Navigation Start.wav
		MouseMove, %OrigX%, %OrigY%, %MouseSpeed%
	}
}

showPositions(count:=2)
{
	;;@Test in game chat
	;;Send, l:%LockedLeft%,%LockedTop% v:%ViewLeft%,%ViewTop%>{Space}
	;Get current position to return
	MouseGetPos, OrigX, OrigY
	Loop, %count% {
		MouseMove, %ViewLeft%, %ViewTop%, 4 ; %MouseSpeed%
		MouseMove, %LockedLeft%, %LockedTop%, 4 ; %MouseSpeed%
	}
	MouseMove, %OrigX%, %OrigY%, %MouseSpeed%
}

;-=-\ Init \-=-
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

;-=-\ Let's play! \-=-
;enable mouse clicker (random time 1-10 sec, current mouse position)
$^!C::
	Send, {^!C}
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
		SoundPlay %A_WinDir%\Media\Windows Navigation Start.wav
		MouseMove, %OrigX%, %OrigY%
		Sleep, % ran(3000, 9000)
	}
return

;enable [1-8] and ^[1-8] key clicker 
$^!A::
	Send, {^!A}
	StopKeys = 0
	SoundPlay %A_WinDir%\Media\Windows Pop-up Blocked.wav
	showPositions(2)
return

;set new ^[1-8] targetsLocked positions
$^!1::
	;Set coords
	;Mouse must be at 1st locked icon
	MouseGetPos, LockedLeft, LockedTop
	;@Test in game chat
	;Send, l::%LockedTop%, %LockedLeft%
	showPositions()
return

;set new [1-8] overView positions
$^!2::
	;Set coords
	;Mouse must be at 1st line of overview
	MouseGetPos, ViewLeft, ViewTop
	;@Test in game chat
	;Send, v::%ViewTop%, %ViewLeft%
	showPositions()
return

;[1-8] click locked
$1::
	Send, 1
	clkLocked(1)
return

$2::
	Send, 2
	clkLocked(2)
return

$3::
	Send, 3
	clkLocked(3)
return

$4::
	Send, 4
	clkLocked(4)
return

$5::
	Send, 5
	clkLocked(5)
return

$6::
	Send, 6
	clkLocked(6)
return

$7::
	Send, 7
	clkLocked(7)
return

$8::
	Send, 8
	clkLocked(8)
return

;control+[1-8] control+click overview to lock
$^1::
	Send, ^{1}
	clkView(1)
return

$^2::
	Send, ^{2}
	clkView(2)
return

$^3::
	Send, ^{3}
	clkView(3)
return

$^4::
	Send, ^{4}
	clkView(4)
return

$^5::
	Send, ^{5}
	clkView(5)
return

$^6::
	Send, ^{6}
	clkView(6)
return

$^7::
	Send, ^{7}
	clkView(7)
return

$^8::
	Send, ^{8}
	clkView(8)
return





















