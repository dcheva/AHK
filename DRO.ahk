;-) by Cheva (c) 2017-2019
;-) DRO keys
            
;reload
$^+R::Reload
;suspend/resume
$CapsLock::Suspend, toggle
$^CapsLock::Suspend, toggle

CLK:=false

$RControl:: 
Send, {RControl Down}
CLK:=true
Loop, 
{
  if(!CLK)
    break
  Click
  Sleep, 250
}
return

$Space::
  Send, {RControl Up}
  Send, {Space}
  Reload
return

$^Space::
  Send, {RControl Up}
  Send, {Space}
  Reload
return



$MButton::
    CLK:=false
return 

$^MButton::
    CLK:=false
return 
