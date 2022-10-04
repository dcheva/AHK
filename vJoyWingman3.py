import time
from System import Int16
from ctypes import windll, Structure, c_ulong, byref
   
if starting:
	vJoy_Key = Key.CapsLock # кнопка на клавиатуре включающая режим управления джойстика мышкой
	steps = [0,4,8,12,16,20,24,28,32,-32,-28,-24,-20,-16,-12,-8,-4]
	oldJoyX = 0
	newJoyX = 0
	oldX = 0
	newX = 0
	oldStepN = 0
	newStepN = 0
	oldStep = 0
	newStep = 0
	m = ''

################################################################
## Map 32 keys
################################################################

vJoy[0].setButton(0,mouse.getButton(0)) 

vJoy[0].setButton(0,int(keyboard.getKeyDown(Key.NumberPad1)))
vJoy[0].setButton(1,int(keyboard.getKeyDown(Key.NumberPad2)))
vJoy[0].setButton(2,int(keyboard.getKeyDown(Key.NumberPad3)))
vJoy[0].setButton(3,int(keyboard.getKeyDown(Key.NumberPad4)))
vJoy[0].setButton(4,int(keyboard.getKeyDown(Key.NumberPad5)))
vJoy[0].setButton(5,int(keyboard.getKeyDown(Key.NumberPad6)))
vJoy[0].setButton(6,int(keyboard.getKeyDown(Key.NumberPad7)))
vJoy[0].setButton(7,int(keyboard.getKeyDown(Key.NumberPad8)))
vJoy[0].setButton(8,int(keyboard.getKeyDown(Key.NumberPad9)))
vJoy[0].setButton(9,int(keyboard.getKeyDown(Key.NumberPad0)))
vJoy[0].setButton(10,int(keyboard.getKeyDown(Key.NumberPadComma)))
vJoy[0].setButton(11,int(keyboard.getKeyDown(Key.NumberPadEnter)))
vJoy[0].setButton(12,int(keyboard.getKeyDown(Key.NumberPadPlus)))
vJoy[0].setButton(13,int(keyboard.getKeyDown(Key.NumberPadMinus)))
vJoy[0].setButton(14,int(keyboard.getKeyDown(Key.NumberPadEquals)))
vJoy[0].setButton(15,int(keyboard.getKeyDown(Key.NumberLock)))
vJoy[0].setButton(16,int(keyboard.getKeyDown(Key.NumberPadSlash)))
vJoy[0].setButton(17,int(keyboard.getKeyDown(Key.NumberPadStar)))
vJoy[0].setButton(18,int(keyboard.getKeyDown(Key.NumberPadPeriod)))
vJoy[0].setButton(19,int(keyboard.getKeyDown(Key.RightControl))) 
vJoy[0].setButton(20,int(keyboard.getKeyDown(Key.RightShift)))
vJoy[0].setButton(21,int(keyboard.getKeyDown(Key.LeftArrow)))
vJoy[0].setButton(22,int(keyboard.getKeyDown(Key.UpArrow)))
vJoy[0].setButton(23,int(keyboard.getKeyDown(Key.DownArrow)))
vJoy[0].setButton(24,int(keyboard.getKeyDown(Key.RightArrow)))
vJoy[0].setButton(25,int(keyboard.getKeyDown(Key.D1)))
vJoy[0].setButton(26,int(keyboard.getKeyDown(Key.D2)))
vJoy[0].setButton(27,int(keyboard.getKeyDown(Key.D3)))
vJoy[0].setButton(28,int(keyboard.getKeyDown(Key.D4)))
vJoy[0].setButton(29,int(keyboard.getKeyDown(Key.PrintScreen)))
vJoy[0].setButton(30,int(keyboard.getKeyDown(Key.ScrollLock)))
vJoy[0].setButton(31,int(keyboard.getKeyDown(Key.Pause)))

################################################################
## Let's dance
################################################################

newJoyX = joystick[1].x

if oldJoyX == newJoyX: #->
	newStepN = oldStepN
	newX = oldX
	m = '-> '
	
else:
	if oldJoyX < newJoyX: #->r
		if oldStepN <= 0: #cl->r 
			newStepN = 1
			m = 'cl->r '
		if oldStepN > 0: #r->r 
			newStepN += 1
			m = 'r->r '
	if oldJoyX > newJoyX: #->l
		if oldStepN >= 0: #cr->l 
			newStepN = -1
			m = 'cr->l '
		if oldStepN < 0: #l->l 
			newStepN -= 1
			m = 'l->l '

if newStepN > 8: newStepN = 8
if newStepN <-8: newStepN =-8
newStep = steps[newStepN]

if oldJoyX <> newJoyX: #!->
	dJoyX = newJoyX - oldJoyX
	if abs(dJoyX) > 64: newStep = dJoyX 
	newX = oldX + newStep
	m = '!-> ' + str(dJoyX)

#if newStepN > 0 and (newX > newJoyX or newStep > dJoyX): newX = newJoyX
#if newStepN < 0 and (newX < newJoyX or newStep > dJoyX): newX = newJoyX
if newStepN > 0 and newX > newJoyX: newX = newJoyX
if newStepN < 0 and newX < newJoyX: newX = newJoyX

oldStep = newStep
oldStepN = newStepN
oldJoyX = newJoyX
oldX = newX

vJoy[0].x = newX
vJoy[0].y = joystick[1].y
vJoy[0].z = joystick[1].z

################################################################
diagnostics.watch(m)
diagnostics.watch(newX)
diagnostics.watch(oldX)
diagnostics.watch(newStepN)
diagnostics.watch(oldStepN)
diagnostics.watch(newStep)
diagnostics.watch(oldStep)
################################################################
diagnostics.watch(joystick[1].x)
################################################################
diagnostics.watch(vJoy[0].x)
diagnostics.watch(vJoy[0].y)
diagnostics.watch(vJoy[0].z)
################################################################

#time.sleep(0.5)